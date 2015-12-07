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

#ifndef _TOP_H_
#define _TOP_H_

#include "hls_video.h"
#include "ap_fixed.h"
#include "ap_int.h"

// maximum image size
#define MAX_WIDTH  1920
#define MAX_HEIGHT 1080

// I/O Image Settings
#define INPUT_IMAGE           "test_1080p.bmp"
#define OUTPUT_IMAGE          "result_1080p.bmp"
#define OUTPUT_IMAGE_GOLDEN   "result_1080p_golden.bmp"

#define BACKGROUND 0
#define NON_BACKGROUND 1
#define INTERVAL_THRESH 16

// typedef video library core structures
typedef hls::stream<ap_axiu<32,1,1,1> >               AXI_STREAM;
typedef hls::Scalar<3, unsigned char>                 RGB_PIXEL;
typedef hls::Scalar<1, unsigned char>                 UC_PIXEL;
typedef hls::Scalar<3, unsigned char>                 YCBCR_PIXEL;

typedef hls::Mat<MAX_HEIGHT, MAX_WIDTH, HLS_8UC3>     RGB_IMAGE;
typedef hls::Mat<MAX_HEIGHT, MAX_WIDTH, HLS_8UC1>     UC_IMAGE;
typedef hls::Mat<MAX_HEIGHT, MAX_WIDTH, HLS_8UC3>     YCBCR_IMAGE;

// constants for YCbCr coefficients
const ap_fixed<8,2,AP_RND_INF,AP_SAT> YCOEFFR = 0.299;
const ap_fixed<8,2,AP_RND_INF,AP_SAT> YCOEFFG = 0.587;
const ap_fixed<8,2,AP_RND_INF,AP_SAT> YCOEFFB = 0.114;

const ap_fixed<8,2,AP_RND_INF,AP_SAT> CBCOEFFR = 0.168;
const ap_fixed<8,2,AP_RND_INF,AP_SAT> CBCOEFFG = 0.331;
const ap_fixed<8,2,AP_RND_INF,AP_SAT> CBCOEFFB = 0.5;

const ap_fixed<8,2,AP_RND_INF,AP_SAT> CRCOEFFR = 0.5;
const ap_fixed<8,2,AP_RND_INF,AP_SAT> CRCOEFFG = 0.419;
const ap_fixed<8,2,AP_RND_INF,AP_SAT> CRCOEFFB = 0.0813;

// top level function for Corner detection
void image_filter(AXI_STREAM& src_axi, AXI_STREAM& dst_axi, int rows, int cols);
void Rgb2ycbcr   (RGB_IMAGE& , UC_IMAGE&);
void median_filter (UC_IMAGE&, UC_IMAGE&);
int finger_counter(UC_IMAGE&, UC_IMAGE&);
void set_color(int flip_cnt, UC_IMAGE& src, RGB_IMAGE& dst);
#endif
