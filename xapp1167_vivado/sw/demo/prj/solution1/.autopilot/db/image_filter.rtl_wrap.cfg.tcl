set language "C"
set globalAPint ""
set globalVariable ""
set staticVariable ""
set moduleName "image_filter"
set rawDecl [list "void" "image_filter\(AXI_STREAM& input, AXI_STREAM& output, int rows, int cols\)"]
set argAPint ""
set returnAPint ""
set portList ""
set portName0 "input"
set portInterface0 "[list AP_STREAM 0]"
set structName0 "ap_axiu<32, 1, 1, 1>"
set structParameter0 [list "int D" "int U" "int TI" "int TD"]
set structArgument0 [list 32 1 1 1]
set structMember0 ""
set portName100 "data"
set portInterface100 "wire"
set portData100 "[list ap_uint "D" ]"
set portPointer100 "0"
set portArrayDim100 0
set portConst100 "0"
set portVolatile100 "0"
set portArrayOpt100 ""
set port100 [list $portName100 $portInterface100 $portData100 $portPointer100 $portArrayDim100 $portConst100 $portVolatile100 $portArrayOpt100]
lappend structMember0 $port100
set portName101 "keep"
set portInterface101 "wire"
set portData101 "[list ap_uint "D/8" ]"
set portPointer101 "0"
set portArrayDim101 0
set portConst101 "0"
set portVolatile101 "0"
set portArrayOpt101 ""
set port101 [list $portName101 $portInterface101 $portData101 $portPointer101 $portArrayDim101 $portConst101 $portVolatile101 $portArrayOpt101]
lappend structMember0 $port101
set portName102 "strb"
set portInterface102 "wire"
set portData102 "[list ap_uint "D/8" ]"
set portPointer102 "0"
set portArrayDim102 0
set portConst102 "0"
set portVolatile102 "0"
set portArrayOpt102 ""
set port102 [list $portName102 $portInterface102 $portData102 $portPointer102 $portArrayDim102 $portConst102 $portVolatile102 $portArrayOpt102]
lappend structMember0 $port102
set portName103 "user"
set portInterface103 "wire"
set portData103 "[list ap_uint "U" ]"
set portPointer103 "0"
set portArrayDim103 0
set portConst103 "0"
set portVolatile103 "0"
set portArrayOpt103 ""
set port103 [list $portName103 $portInterface103 $portData103 $portPointer103 $portArrayDim103 $portConst103 $portVolatile103 $portArrayOpt103]
lappend structMember0 $port103
set portName104 "last"
set portInterface104 "wire"
set portData104 "[list ap_uint "1" ]"
set portPointer104 "0"
set portArrayDim104 0
set portConst104 "0"
set portVolatile104 "0"
set portArrayOpt104 ""
set port104 [list $portName104 $portInterface104 $portData104 $portPointer104 $portArrayDim104 $portConst104 $portVolatile104 $portArrayOpt104]
lappend structMember0 $port104
set portName105 "id"
set portInterface105 "wire"
set portData105 "[list ap_uint "TI" ]"
set portPointer105 "0"
set portArrayDim105 0
set portConst105 "0"
set portVolatile105 "0"
set portArrayOpt105 ""
set port105 [list $portName105 $portInterface105 $portData105 $portPointer105 $portArrayDim105 $portConst105 $portVolatile105 $portArrayOpt105]
lappend structMember0 $port105
set portName106 "dest"
set portInterface106 "wire"
set portData106 "[list ap_uint "TD" ]"
set portPointer106 "0"
set portArrayDim106 0
set portConst106 "0"
set portVolatile106 "0"
set portArrayOpt106 ""
set port106 [list $portName106 $portInterface106 $portData106 $portPointer106 $portArrayDim106 $portConst106 $portVolatile106 $portArrayOpt106]
lappend structMember0 $port106
set portData0 [list $structName0 "struct ap_axiu " $structMember0 0 0 $structParameter0 $structArgument0]
set portPointer0 "2"
set portArrayDim0 0
set portConst0 "0"
set portVolatile0 "0"
set portArrayOpt0 ""
set port0 [list $portName0 $portInterface0 $portData0 $portPointer0 $portArrayDim0 $portConst0 $portVolatile0 $portArrayOpt0]
lappend portList $port0
set portName1 "output"
set portInterface1 "[list AP_STREAM 0]"
set structName1 "ap_axiu<32, 1, 1, 1>"
set structParameter1 [list "int D" "int U" "int TI" "int TD"]
set structArgument1 [list 32 1 1 1]
set structMember1 ""
set portName110 "data"
set portInterface110 "wire"
set portData110 "[list ap_uint "D" ]"
set portPointer110 "0"
set portArrayDim110 0
set portConst110 "0"
set portVolatile110 "0"
set portArrayOpt110 ""
set port110 [list $portName110 $portInterface110 $portData110 $portPointer110 $portArrayDim110 $portConst110 $portVolatile110 $portArrayOpt110]
lappend structMember1 $port110
set portName111 "keep"
set portInterface111 "wire"
set portData111 "[list ap_uint "D/8" ]"
set portPointer111 "0"
set portArrayDim111 0
set portConst111 "0"
set portVolatile111 "0"
set portArrayOpt111 ""
set port111 [list $portName111 $portInterface111 $portData111 $portPointer111 $portArrayDim111 $portConst111 $portVolatile111 $portArrayOpt111]
lappend structMember1 $port111
set portName112 "strb"
set portInterface112 "wire"
set portData112 "[list ap_uint "D/8" ]"
set portPointer112 "0"
set portArrayDim112 0
set portConst112 "0"
set portVolatile112 "0"
set portArrayOpt112 ""
set port112 [list $portName112 $portInterface112 $portData112 $portPointer112 $portArrayDim112 $portConst112 $portVolatile112 $portArrayOpt112]
lappend structMember1 $port112
set portName113 "user"
set portInterface113 "wire"
set portData113 "[list ap_uint "U" ]"
set portPointer113 "0"
set portArrayDim113 0
set portConst113 "0"
set portVolatile113 "0"
set portArrayOpt113 ""
set port113 [list $portName113 $portInterface113 $portData113 $portPointer113 $portArrayDim113 $portConst113 $portVolatile113 $portArrayOpt113]
lappend structMember1 $port113
set portName114 "last"
set portInterface114 "wire"
set portData114 "[list ap_uint "1" ]"
set portPointer114 "0"
set portArrayDim114 0
set portConst114 "0"
set portVolatile114 "0"
set portArrayOpt114 ""
set port114 [list $portName114 $portInterface114 $portData114 $portPointer114 $portArrayDim114 $portConst114 $portVolatile114 $portArrayOpt114]
lappend structMember1 $port114
set portName115 "id"
set portInterface115 "wire"
set portData115 "[list ap_uint "TI" ]"
set portPointer115 "0"
set portArrayDim115 0
set portConst115 "0"
set portVolatile115 "0"
set portArrayOpt115 ""
set port115 [list $portName115 $portInterface115 $portData115 $portPointer115 $portArrayDim115 $portConst115 $portVolatile115 $portArrayOpt115]
lappend structMember1 $port115
set portName116 "dest"
set portInterface116 "wire"
set portData116 "[list ap_uint "TD" ]"
set portPointer116 "0"
set portArrayDim116 0
set portConst116 "0"
set portVolatile116 "0"
set portArrayOpt116 ""
set port116 [list $portName116 $portInterface116 $portData116 $portPointer116 $portArrayDim116 $portConst116 $portVolatile116 $portArrayOpt116]
lappend structMember1 $port116
set portData1 [list $structName1 "struct ap_axiu " $structMember1 0 0 $structParameter1 $structArgument1]
set portPointer1 "2"
set portArrayDim1 0
set portConst1 "0"
set portVolatile1 "0"
set portArrayOpt1 ""
set port1 [list $portName1 $portInterface1 $portData1 $portPointer1 $portArrayDim1 $portConst1 $portVolatile1 $portArrayOpt1]
lappend portList $port1
set portName2 "rows"
set portInterface2 "wire"
set portData2 "int"
set portPointer2 "0"
set portArrayDim2 0
set portConst2 "0"
set portVolatile2 "0"
set portArrayOpt2 ""
set port2 [list $portName2 $portInterface2 $portData2 $portPointer2 $portArrayDim2 $portConst2 $portVolatile2 $portArrayOpt2]
lappend portList $port2
set portName3 "cols"
set portInterface3 "wire"
set portData3 "int"
set portPointer3 "0"
set portArrayDim3 0
set portConst3 "0"
set portVolatile3 "0"
set portArrayOpt3 ""
set port3 [list $portName3 $portInterface3 $portData3 $portPointer3 $portArrayDim3 $portConst3 $portVolatile3 $portArrayOpt3]
lappend portList $port3
set dataPackList ""
set module [list $moduleName $portList $rawDecl $argAPint $returnAPint $dataPackList]
set hasCPPAPInt 1
set hasCPPAPFix 0
set hasSCFix 0
set hasCPPComplex 0
set hasCBool 0
set isTemplateTop 0
set useIntT 1
