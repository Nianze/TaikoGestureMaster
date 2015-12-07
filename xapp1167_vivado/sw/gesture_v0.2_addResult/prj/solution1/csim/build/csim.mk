# ==============================================================
# File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
# Version: 2013.2
# Copyright (C) 2013 Xilinx Inc. All rights reserved.
# 
# ==============================================================

CSIM_DESIGN = 1

__SIM_FPO__ = 1

__SIM_OPENCV__ = 1

__SIM_FFT__ = 1

ObjDir = /home/student/nl443/ece5775/project/TaikoGestureMaster/xapp1167_vivado/sw/gesture/prj/solution1/csim/build/obj

HLS_SOURCES = /home/student/nl443/ece5775/project/TaikoGestureMaster/xapp1167_vivado/sw/gesture/opencv_top.cpp /home/student/nl443/ece5775/project/TaikoGestureMaster/xapp1167_vivado/sw/gesture/test.cpp /home/student/nl443/ece5775/project/TaikoGestureMaster/xapp1167_vivado/sw/gesture/top.cpp

TARGET := csim.exe

AUTOPILOT_ROOT := /opt/xilinx/Vivado_HLS/2013.2
AUTOPILOT_MACH := Linux_x86_64
ifdef AP_GCC_M32
  AUTOPILOT_MACH := Linux_x86
  IFLAG += -m32
endif
IFLAG += -fPIC
ifndef AP_GCC_PATH
  AP_GCC_PATH := /opt/xilinx/Vivado_HLS/2013.2/Linux_x86_64/tools/gcc/bin
endif
AUTOPILOT_TOOL := ${AUTOPILOT_ROOT}/${AUTOPILOT_MACH}/tools
AUTOPILOT_TECH := ${AUTOPILOT_ROOT}/common/technology


IFLAG += -I "${AUTOPILOT_TOOL}/systemc/include"
IFLAG += -I "${AUTOPILOT_ROOT}/include"
IFLAG += -I "${AUTOPILOT_ROOT}/include/ap_sysc"
IFLAG += -I "${AUTOPILOT_TECH}/generic/SystemC"
IFLAG += -I "${AUTOPILOT_TECH}/generic/SystemC/AESL_FP_comp"
IFLAG += -I "${AUTOPILOT_TECH}/generic/SystemC/AESL_comp"
IFLAG += -I "${AUTOPILOT_TOOL}/auto_cc/include"
IFLAG += -D__SIM_FPO__

IFLAG += -D__SIM_OPENCV__

IFLAG += -D__SIM_FFT__

IFLAG += -g



include ./Makefile.rules

all: $(TARGET)



$(ObjDir)/opencv_top.o: /home/student/nl443/ece5775/project/TaikoGestureMaster/xapp1167_vivado/sw/gesture/opencv_top.cpp $(ObjDir)/.dir
	$(Echo) "   Compiling /home/student/nl443/ece5775/project/TaikoGestureMaster/xapp1167_vivado/sw/gesture/opencv_top.cpp in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(CC) -c $(IFLAG)    $(DFLAG)  $< -o $@ ; \

$(ObjDir)/test.o: /home/student/nl443/ece5775/project/TaikoGestureMaster/xapp1167_vivado/sw/gesture/test.cpp $(ObjDir)/.dir
	$(Echo) "   Compiling /home/student/nl443/ece5775/project/TaikoGestureMaster/xapp1167_vivado/sw/gesture/test.cpp in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(CC) -c $(IFLAG)    $(DFLAG)  $< -o $@ ; \

$(ObjDir)/top.o: /home/student/nl443/ece5775/project/TaikoGestureMaster/xapp1167_vivado/sw/gesture/top.cpp $(ObjDir)/.dir
	$(Echo) "   Compiling /home/student/nl443/ece5775/project/TaikoGestureMaster/xapp1167_vivado/sw/gesture/top.cpp in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(CC) -c $(IFLAG)    $(DFLAG)  $< -o $@ ; \
