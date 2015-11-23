#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <iostream>

using namespace std;

#define BACKGROUND 0
#define NON_BACKGROUND 1
#define STONE_CNT 2
#define SISSOR_CNT 4
#define PAPER_CNT 8

bool is_skin(int r, int g, int b);
const string decision[] = {"stone", "scissor", "paper"};
int decision_cnt[] = {0, 0, 0};

int main(int argc, char *argv[])
{   // Declare and initialize variables
    FILE *inFile, *outFile;

    // Define header structure
    typedef struct
    {   unsigned short int Type;
        unsigned int Size;
        unsigned short int Reserved1, Reserved2;
        unsigned int Offset;
    } HEADER;

    // Define info header structure
    typedef struct
    {   unsigned int Size;
        int Width, Height;
        unsigned short int Planes;
        unsigned int Bits;
        unsigned int Compression;
        unsigned int ImageSize;
        int xResolution, yResolution;
        unsigned int Colors;
        unsigned int ImportantColors;
    } INFOHEADER;

    // Define pixel structure
    typedef struct
    {   unsigned char Red, Green, Blue;
    } PIXEL;

    // Declare pointers to structures
    HEADER *pHeader;
    INFOHEADER *pInfoHeader;
    PIXEL *pPixel, **pImage;

    // Initialize matrix for filtering image
    char filter[3][3] = 
    { { -1, 0, 1 }, 
      { -2, 0, 2 }, 
      { -1, 0, 1 } 
    };

    int i, j;
    char sumRed, sumGreen, sumBlue;

    // Dynamically allocate memory for reading in and storing data
    pHeader = (HEADER *)malloc(sizeof(HEADER));
    pInfoHeader = (INFOHEADER *)malloc(sizeof(INFOHEADER));
    pPixel = (PIXEL *)malloc(sizeof(PIXEL));

    // Open input file
    inFile = fopen(argv[1], "rb");

    // Check for file opening correctly
    if(inFile == NULL)
    {   printf("Can't open input file for reading.\n");
        return 1;
    }

    // Open output file
    outFile = fopen(argv[2], "wb");

    // Check for file opening correctly
    if(outFile == NULL)
    {   printf("Can't open output file for writing.\n");
        return 1;
    }

    // Read in header structure
    fread(&pHeader->Type, sizeof(pHeader->Type),1,inFile);
    fread(&pHeader->Size, sizeof(pHeader->Size),1,inFile);
    fread(&pHeader->Reserved1, sizeof(pHeader->Reserved1),1,inFile);
    fread(&pHeader->Reserved2, sizeof(pHeader->Reserved2),1,inFile);
    fread(&pHeader->Offset, sizeof(pHeader->Offset),1,inFile);

    // Write header structure to output
    fwrite(&pHeader->Type, sizeof(pHeader->Type),1,outFile);
    fwrite(&pHeader->Size, sizeof(pHeader->Size),1,outFile);
    fwrite(&pHeader->Reserved1, sizeof(pHeader->Reserved1),1,outFile);
    fwrite(&pHeader->Reserved2, sizeof(pHeader->Reserved2),1,outFile);
    fwrite(&pHeader->Offset, sizeof(pHeader->Offset),1,outFile);

    // Read in info header structure
    fread(&pInfoHeader->Size, sizeof(pInfoHeader->Size),1,inFile);
    fread(&pInfoHeader->Width, sizeof(pInfoHeader->Width),1,inFile);
    fread(&pInfoHeader->Height, sizeof(pInfoHeader->Height),1,inFile);
    fread(&pInfoHeader->Planes, sizeof(pInfoHeader->Planes),1,inFile);
    fread(&pInfoHeader->Bits, sizeof(pInfoHeader->Bits),1,inFile);
    fread(&pInfoHeader->Compression, sizeof(pInfoHeader->Compression),1,inFile);
    fread(&pInfoHeader->ImageSize, sizeof(pInfoHeader->ImageSize),1,inFile);
    fread(&pInfoHeader->xResolution, sizeof(pInfoHeader->xResolution),1,inFile);
    fread(&pInfoHeader->yResolution, sizeof(pInfoHeader->yResolution),1,inFile);
    fread(&pInfoHeader->Colors, sizeof(pInfoHeader->Colors),1,inFile);
    fread(&pInfoHeader->ImportantColors, sizeof(pInfoHeader->ImportantColors),1,inFile);

    // Write info header structure to output
    fwrite(&pInfoHeader->Size, sizeof(pInfoHeader->Size),1,outFile);
    fwrite(&pInfoHeader->Width, sizeof(pInfoHeader->Width),1,outFile);
    fwrite(&pInfoHeader->Height, sizeof(pInfoHeader->Height),1,outFile);
    fwrite(&pInfoHeader->Planes, sizeof(pInfoHeader->Planes),1,outFile);
    fwrite(&pInfoHeader->Bits, sizeof(pInfoHeader->Bits),1,outFile);
    fwrite(&pInfoHeader->Compression, sizeof(pInfoHeader->Compression),1,outFile);
    fwrite(&pInfoHeader->ImageSize, sizeof(pInfoHeader->ImageSize),1,outFile);
    fwrite(&pInfoHeader->xResolution, sizeof(pInfoHeader->xResolution),1,outFile);
    fwrite(&pInfoHeader->yResolution, sizeof(pInfoHeader->yResolution),1,outFile);
    fwrite(&pInfoHeader->Colors, sizeof(pInfoHeader->Colors),1,outFile);
    fwrite(&pInfoHeader->ImportantColors, sizeof(pInfoHeader->ImportantColors),1,outFile);

    // Dynamically allocate memory for multi-dimensional array of pixels
    pImage = (PIXEL **)malloc(sizeof(PIXEL *) * pInfoHeader->Height);
    for(i = 0; i < pInfoHeader->Height; i++)
    {   pImage[i] = (PIXEL *)malloc(sizeof(PIXEL) * pInfoHeader->Width);
    }

    // Read in image data to array
    for(i = 0; i < pInfoHeader->Height; i++)
    {   for(j = 0; j < pInfoHeader->Width; j++)
        {   fread(&pImage[i][j].Red, sizeof(pPixel->Red), 1, inFile);
            fread(&pImage[i][j].Green, sizeof(pPixel->Green), 1, inFile);
            fread(&pImage[i][j].Blue, sizeof(pPixel->Blue), 1, inFile);
        }
    }
    

    int max_filp;
    int state_list[pInfoHeader->Height]; 

    for(i = 0; i < pInfoHeader->Height; i++) { 

        int cur_state = BACKGROUND;     // BACKGROUND or NON_BACKGROUND
        int last_interval = 0;
        int cur_interval = 0;
        int filp_cnt = 0;
        int interval_thresh = 30;

        for(j = 0; j < pInfoHeader->Width; j++) {
            
            if (is_skin(pImage[i][j].Red,pImage[i][j].Green,pImage[i][j].Blue)) {
                pImage[i][j].Red = 255;
                pImage[i][j].Blue = 0;
                pImage[i][j].Green = 0;
                // pixel_count ++;

                if (NON_BACKGROUND == cur_state) {
                    cur_interval += 1;
                } else {    // state change
                    if (cur_interval > interval_thresh) {   // BG filp to NON_BG
                        filp_cnt += 1;
                        last_interval = cur_interval;
                        cur_interval = 1;
                        cur_state = NON_BACKGROUND;
                    } else {    // merge fake NON_BG
                        cur_interval += last_interval + 1;
                        last_interval = 0;
                        cur_state = NON_BACKGROUND;
                    }
                }
            } else {

                if (BACKGROUND == cur_state) {
                    cur_interval += 1;
                } else {    // state change
                    if (cur_interval > interval_thresh) {   // BG filp to NON_BG
                        filp_cnt += 1;
                        last_interval = cur_interval;
                        cur_interval = 1;
                        cur_state = BACKGROUND;
                    } else {    // merge fake NON_BG
                        cur_interval += last_interval + 1;
                        last_interval = 0;
                        cur_state = BACKGROUND;
                    }
                }
            }

            fwrite(&pImage[i][j].Red, sizeof(pPixel->Red), 1, outFile);
            fwrite(&pImage[i][j].Green, sizeof(pPixel->Green), 1, outFile);
            fwrite(&pImage[i][j].Blue, sizeof(pPixel->Blue), 1, outFile);
        }
        // state_list[i] = filp_cnt;
        // cout << state_list[i] << ", \n";
        if (filp_cnt == STONE_CNT) {
            decision_cnt[0] += 1;
        } else if (filp_cnt == SISSOR_CNT) {
            decision_cnt[1] += 1;
        } else if (filp_cnt == PAPER_CNT) {
            decision_cnt[2] += 1;
        }
    }
    cout << decision_cnt[0] << ", " << decision_cnt[1] << ", " << decision_cnt[2] << "\n" ;
    if (decision_cnt[2] > decision_cnt[0] * 0.8) {
        cout << decision[2] << "\n";
    } else if (decision_cnt[1] > decision_cnt[0] * 0.8) {
        cout << decision[1] << "\n";
    } else {
        cout << decision[0] << "\n";
    }

    // Close files and free memory
    fclose(inFile);
    fclose(outFile);
    free(pHeader);
    free(pInfoHeader);
    free(pPixel);
    free(pImage);

    return 0; // Returns normally
}

bool is_skin(int r, int g, int b) {
    return r > 95 && g > 40 && b > 20 && 
            r >= g && r >= b && 
            max(max(r, g), b) - min(min(r, g), b) > 15
            && abs(r - g) > 15;
}

