/******************************************************************************
* ECE 5775 - Final Project Code
* Project Name: Corner detection algorithm - Simulation testbench
* Created by: Mohit Yogesh Modi (mm2675),
*	    Aashish Agarwal   (aa2264),
*	    Asha Ganesan      (ag2248)
* Fall 2014: Submission Date = Dec 17-2014
* This file shows the open cv version of corner detection.
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

#include "opencv_top.h"
#include "top.h"
#include <stdio.h>

void opencv_image_filter(IplImage* src, IplImage* dst) {


  IplImage* tmp = cvCreateImage(cvGetSize(src), src->depth, src->nChannels);
  IplImage* b=cvCreateImage(cvGetSize(src), 8, 1);
  IplImage* g=cvCreateImage(cvGetSize(src), 8, 1);
  IplImage* r=cvCreateImage(cvGetSize(src), 8, 1);
  IplImage* bgrimg=cvCreateImage(cvGetSize(src), src->depth, src->nChannels);
  IplImage* ycbcrimg=cvCreateImage(cvGetSize(src), src->depth, src->nChannels);
  IplImage* y=cvCreateImage(cvGetSize(src), 8, 1);
  IplImage* cr=cvCreateImage(cvGetSize(src), 8, 1);
  IplImage* cb=cvCreateImage(cvGetSize(src), 8, 1);
  IplImage* med_img=cvCreateImage(cvGetSize(src), 8, 1);
  IplImage* thresh=cvCreateImage(cvGetSize(src), 8, 1);
  IplImage* med_img_3=cvCreateImage(cvGetSize(src), 8, 3);
  
  // Splitting the input image to separate R, G, B channels
  cvSplit(src, r, g, b, NULL);
  
  // Converting RGB to BGR
  cvMerge (b, g, r, NULL, bgrimg);
  
  // Converting BGR image to YCbCr and thresholding with respect to red
  cvCvtColor(src, ycbcrimg, CV_BGR2YCrCb);
  cvSplit(ycbcrimg, y, cb, cr, NULL);
  cvThreshold(cb, thresh, 169, 255, cv::THRESH_BINARY); 

  // Median filtering with 5x5 window
  cv::medianBlur(cv::Mat(thresh), cv::Mat(med_img), 5);
     
  // Detecting and plotting corners   
	std::vector<std::vector<cv::Point> > contours;
	std::vector<cv::Vec4i> hierarchy;

	cv::findContours(cv::Mat(med_img), contours, hierarchy, CV_RETR_TREE, CV_CHAIN_APPROX_SIMPLE, cv::Point(0, 0));

	std::vector<cv::RotatedRect> minRect(contours.size());
	cv::RotatedRect maxAreaminRect;
	
	int maxArea = 100;


	for (size_t i = 0; i < contours.size(); i++)
	{
		minRect[i] = minAreaRect(cv::Mat(contours[i]));

		if ((minRect[i].size.width * minRect[i].size.height) > maxArea)
		{
			maxArea = (minRect[i].size.width * minRect[i].size.height);
			maxAreaminRect = minRect[i];
		}
	}
        unsigned int drawingSize = cvGetSize(src).width*cvGetSize(src).height;
	cv::Mat drawing = cv::Mat::zeros(cv::Mat(src).size(), CV_8UC3);

        // Green color highlight
	cv::Scalar color = cv::Scalar(0, 255, 0);
	int borderThickness = 5;

	// lines connecting corners
	cv::Point2f rect_Points[4]; maxAreaminRect.points(rect_Points);
	for (int j = 0; j < 4; j++)
		cv::line(drawing, rect_Points[j], rect_Points[(j + 1) % 4], color, borderThickness, 8);

  	// copying drawing into destination
 	memcpy(dst->imageData, drawing.data, drawingSize);
 
}

void sw_image_filter(IplImage* src, IplImage* dst, IplImage* paper_res, IplImage* scissor_res, IplImage* rock_res) {
    AXI_STREAM src_axi, dst_axi;
    IplImage2AXIvideo(src, src_axi);
    image_filter(src_axi, dst_axi, src->height, src->width, paper_res, scissor_res, rock_res);
    AXIvideo2IplImage(dst_axi, dst);
}
