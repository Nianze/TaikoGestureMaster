/******************************************************************************
* ECE 5775 - Final Project Code
* Project Name: Corner detection algorithm - Simulation testbench
* Created by: Mohit Yogesh Modi (mm2675),
*	    Aashish Agarwal   (aa2264),
*	    Asha Ganesan      (ag2248)
* Fall 2014: Submission Date = Dec 12-2014
* This file takes input static image and performs corner detection algorithm
* on the image using both HLS "hw" implementation and "sw" implementation,
* producing two different outputs.
* This project has been referrenced from 3 source of information
* (1) Canny edge detection project of ECE5775-Fall 2013, submitted by Aadeetya Shreedhar 
*    and Alexander Wang
* (2) Corner detection logic is referranced from ECE5760 project submitted by Julie Wang
*    Website Link: http://people.ece.cornell.edu/land/courses/ece5760/FinalProjects/s2014/jsw267/html/html/
* (3) Xilinx tutorial and the copyright notice and disclaimer is retained as follows.
********************************************************************************/

/***************************************************************************
*   © Copyright 2013 Xilinx, Inc. All rights reserved. 
*   This file contains confidential and proprietary information of Xilinx,
*   Inc. and is protected under U.S. and international copyright and other
*   intellectual property laws. 
*   DISCLAIMER
*   This disclaimer is not a license and does not grant any rights to the
*   materials distributed herewith. Except as otherwise provided in a valid
*   license issued to you by Xilinx, and to the maximum extent permitted by
*   applicable law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND WITH
*   ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES AND CONDITIONS, 
*   EXPRESS, IMPLIED, OR STATUTORY, INCLUDING BUT NOT LIMITED TO WARRANTIES
*   OF MERCHANTABILITY, NON-INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR 
*   PURPOSE; and (2) Xilinx shall not be liable (whether in contract or 
*   tort, including negligence, or under any other theory of liability)
*   for any loss or damage of any kind or nature related to, arising under
*   or in connection with these materials, including for any direct, or any
*   indirect, special, incidental, or consequential loss or damage (including
*   loss of data, profits, goodwill, or any type of loss or damage suffered 
*   as a result of any action brought by a third party) even if such damage
*   or loss was reasonably foreseeable or Xilinx had been advised of the 
*   possibility of the same. 
*   CRITICAL APPLICATIONS 
*   Xilinx products are not designed or intended to be fail-safe, or for use
*   in any application requiring fail-safe performance, such as life-support
*   or safety devices or systems, Class III medical devices, nuclear facilities,
*   applications related to the deployment of airbags, or any other applications
*   that could lead to death, personal injury, or severe property or environmental
*   damage (individually and collectively, "Critical Applications"). Customer
*   assumes the sole risk and liability of any use of Xilinx products in Critical
*   Applications, subject only to applicable laws and regulations governing 
*   limitations on product liability. 
*   THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS PART OF THIS FILE AT 
*   ALL TIMES.
***************************************************************************/
#include "top.h"

//---------------------------------------------------------------------------
// Convert RGB color space to YCbCr color and threshold the image by considering
// red colored thresholds. The output will be single channel format for resource
// optimization
//---------------------------------------------------------------------------
void Rgb2ycbcr(RGB_IMAGE& rgb, UC_IMAGE& ycbcr)
{
  HLS_SIZE_T rows = rgb.rows;
  HLS_SIZE_T cols = rgb.cols;
	
  RGB_PIXEL pixel_gd;
  RGB_PIXEL out_pixel;
  UC_PIXEL pixel_out;
  
  unsigned char pixel_out_val;
  
  for( HLS_SIZE_T i = 0; i < rows; i++ ) {
    for( HLS_SIZE_T j = 0; j < cols; j++ ) {
#pragma HLS LOOP_FLATTEN OFF
#pragma HLS PIPELINE
      // read pixels from the input stream only if within the bounds of the image
      rgb >> pixel_gd;

      // convert the RGB formate to YCbCr format			
      out_pixel.val[0] = ( YCOEFFR * pixel_gd.val[0] ) + ( YCOEFFG * pixel_gd.val[1] ) + ( YCOEFFB * pixel_gd.val[2] );
      out_pixel.val[1] = 128 - ( CBCOEFFR * pixel_gd.val[0] ) - ( CBCOEFFG * pixel_gd.val[1] ) + ( CBCOEFFB * pixel_gd.val[2] );
      out_pixel.val[2] = 128 + ( CRCOEFFR * pixel_gd.val[0] ) - ( CRCOEFFG * pixel_gd.val[1] ) - ( CRCOEFFB * pixel_gd.val[2] );

      pixel_out_val = 0; // black
      
      // do thresholding on YCbCR value. and separate red component 
      if ( (out_pixel.val[1] > 174) )
      {
        pixel_out_val = 255;
      }
      
      // if red is detected then output should be white else output should be black
      pixel_out.val[0] = pixel_out_val;
      
      // pixel out
      ycbcr << pixel_out;
     } // inner for loop end		
   } // outer for loop end
  
}


// ========================================================================
// this function does pyramid down on the input image 
// ========================================================================
void pyrDown(UC_IMAGE& src, DUC_IMAGE& dsp){
 HLS_SIZE_T rows = src.rows;
 HLS_SIZE_T cols = src.cols;

 // kernel is of 5x5 so need only 4 rows of line buffer, 5th row will be used of window buffer
 hls::LineBuffer<4, 1920, unsigned char> lineBuffer;
 
 // 5x5 window buffer/kernal which traverse horizontally through line buffer
 hls::Window<5,5, unsigned char> window;

#pragma PIPELINE II=1
 UC_PIXEL pixel_in;
 UC_PIXEL pixel_out;

 unsigned char pixel_in_val;
 unsigned char pixel_out_val;
 unsigned char lineBuff0;
 unsigned char lineBuff1;
 unsigned char lineBuff2;
 unsigned char lineBuff3;
  
 for ( HLS_SIZE_T i =0; i< rows+1; i++) {
//#pragma HLS LOOP_TRIPCOUNT min=601 max=1081 avg=721 
  for (HLS_SIZE_T j =0 ; j <cols+1; j++ ) {
//#pragma HLS LOOP_TRIPCOUNT min=801 max=1921 avg=1281
#pragma HLS LOOP_FLATTEN OFF
//#pragma HLS DEPENDENCE array inter false
#pragma HLS PIPELINE
    if(i<rows && j<cols) {
     src >> pixel_in;
     // 1st element is having thresholded value
     pixel_in_val = pixel_in.val[0];	
    }

    // move the column values of linebuffer up. 
    // To make space for the new pixel in the right bottom of line buffer
    if ( j <cols ) {
      lineBuff0 = lineBuffer.getval(0,j);
      lineBuff1 = lineBuffer.getval(1,j);
      lineBuff2 = lineBuffer.getval(2,j);
      lineBuff3 = lineBuffer.getval(3,j);
      lineBuffer.val[3][j] = lineBuff2;
      lineBuffer.val[2][j] = lineBuff1;
      lineBuffer.val[1][j] = lineBuff0;
    }

    // insert new pixel to the bottom right of the linebuffer.
    // right bottom element is at the 0th location
    if ( j < cols && i < rows ) {
     lineBuffer.insert_bottom(pixel_in_val, j);
    }
     
    // shift the window to right on every pixel input
    window.shift_right();

    // after shifting window to right, we have freed up a space at 0th column
    // of all the rows of window. So move linebuffer and new pixel values to 
    // the window's 0th column	
    if(j < cols ) {
     window.insert( lineBuff0, 4, 0);
     window.insert( lineBuff1, 3, 0);
     window.insert( lineBuff2, 2, 0);
     window.insert( lineBuff3, 1, 0);
     window.insert( pixel_in_val, 0, 0);
    }
    
    unsigned int pixel_out_val = 0;
	char filter[5][5] = {
		{1, 4, 6, 4,1},
		{4,16,24,16,4},
		{6,24,36,24,6},
		{4,16,24,16,4},
		{1, 4, 6, 4,1}
	};
	
   // 1st 4 rows and column will have garbage values
   // because window is not filled initially, so for them
   // assign 1st four rows and columns as black
   if (i< 4 || j < 4 || i>rows-1 || j> cols - 1) {
    pixel_out_val = 0; 
   }
   else {
    for(unsigned int l = 0; l<5;l++) {
      for (unsigned int m =0; m<5;m++) {
        pixel_out_val = pixel_out_val + (window.getval(l,m)*filter[l][m]) ;
      }
    } 
   }
  
  // if pixel is within the bound then assign the value to the out going pixel
  if ( j>0 && i>0 && j%2==1 && i&&2==1) {
   pixel_out.val[0] = pixel_out_val;
   dst << pixel_out/16;
  }
  } // end of inner for loop
 } // end of outer for loop
}

// ========================================================================
// this function does 5x5 median filtering on the input image and deteriorates
// the noice to do better corner detection
// ========================================================================
void median_filter(UC_IMAGE& src, UC_IMAGE& dst)
{
 HLS_SIZE_T rows = src.rows;
 HLS_SIZE_T cols = src.cols;

 // kernel is of 5x5 so need only 4 rows of line buffer, 5th row will be used of window buffer
 hls::LineBuffer<4, 1920, unsigned char> lineBuffer;
 
 // 5x5 window buffer/kernal which traverse horizontally through line buffer
 hls::Window<5,5, unsigned char> window;

#pragma PIPELINE II=1
 UC_PIXEL pixel_in;
 UC_PIXEL pixel_out;

 unsigned char pixel_in_val;
 unsigned char pixel_out_val;
 unsigned char lineBuff0;
 unsigned char lineBuff1;
 unsigned char lineBuff2;
 unsigned char lineBuff3;
  
 for ( HLS_SIZE_T i =0; i< rows+1; i++) {
//#pragma HLS LOOP_TRIPCOUNT min=601 max=1081 avg=721 
  for (HLS_SIZE_T j =0 ; j <cols+1; j++ ) {
//#pragma HLS LOOP_TRIPCOUNT min=801 max=1921 avg=1281
#pragma HLS LOOP_FLATTEN OFF
//#pragma HLS DEPENDENCE array inter false
#pragma HLS PIPELINE
    if(i<rows && j<cols) {
     src >> pixel_in;
     // 1st element is having thresholded value
     pixel_in_val = pixel_in.val[0];	
    }

    // move the column values of linebuffer up. 
    // To make space for the new pixel in the right bottom of line buffer
    if ( j <cols ) {
      lineBuff0 = lineBuffer.getval(0,j);
      lineBuff1 = lineBuffer.getval(1,j);
      lineBuff2 = lineBuffer.getval(2,j);
      lineBuff3 = lineBuffer.getval(3,j);
      lineBuffer.val[3][j] = lineBuff2;
      lineBuffer.val[2][j] = lineBuff1;
      lineBuffer.val[1][j] = lineBuff0;
    }

    // insert new pixel to the bottom right of the linebuffer.
    // right bottom element is at the 0th location
    if ( j < cols && i < rows ) {
     lineBuffer.insert_bottom(pixel_in_val, j);
    }
     
    // shift the window to right on every pixel input
    window.shift_right();

    // after shifting window to right, we have freed up a space at 0th column
    // of all the rows of window. So move linebuffer and new pixel values to 
    // the window's 0th column	
    if(j < cols ) {
     window.insert( lineBuff0, 4, 0);
     window.insert( lineBuff1, 3, 0);
     window.insert( lineBuff2, 2, 0);
     window.insert( lineBuff3, 1, 0);
     window.insert( pixel_in_val, 0, 0);
    }
    
    unsigned int countOnes = 0;
  
   // 1st 4 rows and column will have garbage values
   // because window is not filled initially, so for them
   // assign 1st four rows and columns as black
   if (i< 4 || j < 4 || i>rows-1 || j> cols - 1) {
    pixel_out_val = 0; 
   }
   else {
    for(unsigned int l = 0; l<5;l++) {
      for (unsigned int m =0; m<5;m++) {
        countOnes = (window.getval(l,m) == 0) ? countOnes : countOnes + 1;
      }
    }

    // check if majority of the pixels are red
    // if so, then assign it as white value, otherwise black value
    // note: white = 255 pixel value, black = 0 pixel value
    // threshold point is 19. That means, out of 5x5 = 25 pixel,
    //  atleast 19 pixels have to red for median value to be white
    pixel_out_val = (countOnes > 19 ) ? 255 : 0;
   }
  
  // if pixel is within the bound then assign the value to the out going pixel
  if ( j>0 && i>0 ) {
   pixel_out.val[0] = pixel_out_val;
   dst << pixel_out;
  }
  } // end of inner for loop
 } // end of outer for loop
} // end of function



// =======================================================================================
// this function detects the corner from the median filtered image.
// at the end of streaming all the pixels of the frame, it will assign
// a, b, c, d with 4 corners which are calculated in this function.
// =======================================================================================
//void Corner_Detect(UC_IMAGE& src, UC_IMAGE& dst, unsigned int * a, unsigned int * b,unsigned  int * c, unsigned int * d) 
void Corner_Detect(UC_IMAGE& src, hls::stream< ap_uint<88> >& corners) 
{
  HLS_SIZE_T rows = src.rows;
  HLS_SIZE_T cols = src.cols;

  ap_uint<11> ymax = 0;
  ap_uint<11> xmax = 0;
  ap_uint<11> xmin = cols;
  ap_uint<11> ymin = rows;
	
  // [0] element is X and [1] element is y
  //unsigned int a_temp[2], b_temp[2], c_temp[2], d_temp[2];
  ap_uint<11> temp[8] = {0, 0, 0, 0, 0, 0, 0, 0 };
  static ap_uint<11> prevCorner[8];

  UC_PIXEL pixel_in;
  UC_PIXEL pixel_out;
  ap_uint<88> tmp;
	
  unsigned char pixel_in_val;
	
  // j is cols which X
  // i is rows which is Y
  for( HLS_SIZE_T i = 0; i < rows; i++ ) {
    for( HLS_SIZE_T j = 0; j < cols; j++ ) {
#pragma HLS LOOP_FLATTEN OFF
#pragma HLS PIPELINE
#pragma HLS DEPENDENCE array inter false
      src >> pixel_in;
      pixel_in_val = pixel_in.val[0];
  
      ap_uint<1> isValid = pixel_in_val > 0;

      // write the previous frame's detected corner as output
      // essential corner display will lag 1 frame behind
      tmp = (prevCorner[7], prevCorner[6], prevCorner[5], prevCorner[4],
                           prevCorner[3], prevCorner[2], prevCorner[1], prevCorner[0]);
 
      corners.write(tmp);

      if (!isValid) continue;

      if (j < xmin) {
	 xmin = j;
         temp[0] = j;
         temp[1] = i;
      }

      if (j > xmax) {
	 xmax = j;
         temp[2] = j;
         temp[3] = i;
       }
         
      if (i < ymin) {
 	 ymin = i;
         temp[4] = j;
         temp[5] = i;
        }
          
      if (i > ymax) {
	 ymax = i;
         temp[6] = j;
         temp[7] = i;
        }
	
     } // inner for loop end
    } // outer for loop end

    // renaming to prevent RAW hazard of temp array
    ap_uint<11> temp0 = temp[0];
    ap_uint<11> temp1 = temp[1];
    ap_uint<11> temp2 = temp[2];
    ap_uint<11> temp3 = temp[3];
    ap_uint<11> temp4 = temp[4];
    ap_uint<11> temp5 = temp[5];
    ap_uint<11> temp6 = temp[6];
    ap_uint<11> temp7 = temp[7];

    prevCorner[0] = temp0;
    prevCorner[1] = temp1;
    prevCorner[2] = temp2;
    prevCorner[3] = temp3;
    prevCorner[4] = temp4;
    prevCorner[5] = temp5;
    prevCorner[6] = temp6;
    prevCorner[7] = temp7;
}

// ==============================================================================
// This function displays corner to the output video streams. The corners
// are given white value and the rest of the video is given black value
// ==============================================================================
//void Display_Corners( unsigned int * a, unsigned int * b,unsigned  int * c, \
	unsigned int * d, UC_IMAGE& src, RGB_IMAGE & dst)
void Display_Corners( hls::stream< ap_uint<88> >& corners, RGB_IMAGE & dst)
{
  HLS_SIZE_T rows = dst.rows;
  HLS_SIZE_T cols = dst.cols;  
 
  UC_PIXEL pixel_in;
  RGB_PIXEL pixel_out;
	
 // unsigned char pixel_in_val;
  unsigned char pixel_out_val;
  

  // point tracking counter for x and y direction
  ap_uint<5> counterX = 0;
  ap_uint<1> isPoint = 0;
   
  for( HLS_SIZE_T i = 0; i < rows; i++ ) {
    for( HLS_SIZE_T j = 0; j < cols; j++ ) {
#pragma HLS LOOP_FLATTEN OFF
#pragma HLS PIPELINE

    ap_uint<11> a[2], b[2], c[2], d[2];
    
    ap_uint<88> abcd = corners.read();
    a[0] = abcd.range(10, 0);
    a[1] = abcd.range(21, 11);
    b[0] = abcd.range(32, 22);
    b[1] = abcd.range(43, 33);
    c[0] = abcd.range(54, 44);
    c[1] = abcd.range(65, 55);
    d[0] = abcd.range(76, 66);
    d[1] = abcd.range(87, 77);

    pixel_out_val = 0; // black
	
      // if index i and j matches any of the corner, set isPoint = 1
      // else false
      isPoint = 
        (i == a[1] && j == a[0])     ||
        (i == b[1] && j == b[0])     ||
        (i == c[1] && j == c[0])     ||
        (i == d[1] && j == d[0]);
        
              
      // if current loop index matches one of the corners
      // then draw a line of 13 pixel from that point.	
      if( isPoint		   ||
	  counterX > 0 		   
        )
       {
        pixel_out_val =  255; // white color
        
	if ( isPoint ) {
	 counterX = 13;
	}
	else
	{
	 counterX--;
	}
       }
           
      pixel_out.val[0] = pixel_out_val;
      pixel_out.val[1] = pixel_out_val;
      pixel_out.val[2] = pixel_out_val;
      dst << pixel_out;
    } // inner for loop
   }  // outer for loop
} // function end

// ===============================================================================
// this function gets pixelwise AXI format video stream, 
// does RGB to YCbCr Conversion,
// does threshold on the converted pixel stream to detect red color,
// does median filter with 5x5 window to remove noise from the pixel stream
// detects corner on the median filtered image
// displays detected corner as the output.
// Throughout the process of detecting corner, II of 1 is maintain which
// indicates that every cycle, the function takes an pixel in and gives a pixel out.
// ===============================================================================
void image_filter(AXI_STREAM& input, AXI_STREAM& output, int rows, int cols) {
    //Create AXI streaming interfaces for the core
#pragma HLS RESOURCE variable=input core=AXIS metadata="-bus_bundle INPUT_STREAM"
#pragma HLS RESOURCE variable=output core=AXIS metadata="-bus_bundle OUTPUT_STREAM"

#pragma HLS RESOURCE core=AXI_SLAVE variable=rows metadata="-bus_bundle CONTROL_BUS"
#pragma HLS RESOURCE core=AXI_SLAVE variable=cols metadata="-bus_bundle CONTROL_BUS"
#pragma HLS RESOURCE core=AXI_SLAVE variable=return metadata="-bus_bundle CONTROL_BUS"

#pragma HLS INTERFACE ap_stable port=rows
#pragma HLS INTERFACE ap_stable port=cols

    RGB_IMAGE src(rows, cols);
    UC_IMAGE ycbcr(rows, cols);

    // four corners of the image with X coordinate being 1st 
    // and Y coordinate being 2nd element.
    hls::stream< ap_uint<88> > corners;
    UC_IMAGE cornerDetectImage(rows, cols);
    UC_IMAGE medianImage(rows, cols);
    RGB_IMAGE medianImageRGB(rows, cols);
    RGB_IMAGE result(rows, cols);
#pragma HLS dataflow
    hls::AXIvideo2Mat (input, src );
    printf("input\n");
 
    // converts RGB color format to YCbCr format,
    // it gives better noise performance over color space
    // in parallel thresholds the image to separate red color
    Rgb2ycbcr(src, ycbcr);

    // 5x5 median filtering. Last parameter is not actually used.
    median_filter(ycbcr, medianImage);

    // detects for extreme corners of the image and gives them as the output i.e. a,b,c,d
    Corner_Detect(medianImage, corners);

    // overlaps those corner points with the outgoing video
    Display_Corners(corners, result );

    // converts matrix format to the outgoing AXI video stream format
    hls::Mat2AXIvideo(result, output);
}

