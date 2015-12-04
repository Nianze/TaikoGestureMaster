
I
Command: %s
53*	vivadotcl2!
place_design -directive ExploreZ4-113
v
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
Implementation2	
xc7z020Z17-347
f
0Got license for feature '%s' and/or device '%s'
310*common2
Implementation2	
xc7z020Z17-349
U
,Running DRC as a precondition to command %s
22*	vivadotcl2
place_designZ4-22
5
Running DRC with %s threads
24*drc2
4Z23-27
;
DRC finished with %s
79*	vivadotcl2

0 ErrorsZ4-198
\
BPlease refer to the DRC report (report_drc) for more information.
80*	vivadotclZ4-199
:

Starting %s Task
103*constraints2
PlacerZ18-103
S
/The placer was invoked with the '%s' directive.14*	placeflow2	
ExploreZ46-5
b
BMultithreading enabled for place_design using a maximum of %s CPUs12*	placeflow2
4Z30-611
I

Phase %s%s
101*constraints2
1 2
Placer InitializationZ18-101
³
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2
00:00:00.542
00:00:00.542

1342.8282
0.000Z17-268
R

Phase %s%s
101*constraints2
1.1 2
Mandatory Logic OptimizationZ18-101
1
Pushed %s inverter(s).
98*opt2
0Z31-138
H
<Phase 1.1 Mandatory Logic Optimization | Checksum: eb9e57e0
*common
t

%s
*constraints2]
[Time (s): cpu = 00:00:05 ; elapsed = 00:00:05 . Memory (MB): peak = 1342.828 ; gain = 0.000
]

Phase %s%s
101*constraints2
1.2 2)
'Build Super Logic Region (SLR) DatabaseZ18-101
S
GPhase 1.2 Build Super Logic Region (SLR) Database | Checksum: eb9e57e0
*common
t

%s
*constraints2]
[Time (s): cpu = 00:00:05 ; elapsed = 00:00:05 . Memory (MB): peak = 1342.828 ; gain = 0.000
E

Phase %s%s
101*constraints2
1.3 2
Add ConstraintsZ18-101
;
/Phase 1.3 Add Constraints | Checksum: eb9e57e0
*common
t

%s
*constraints2]
[Time (s): cpu = 00:00:05 ; elapsed = 00:00:05 . Memory (MB): peak = 1342.828 ; gain = 0.000
R

Phase %s%s
101*constraints2
1.4 2
Routing Based Site ExclusionZ18-101
H
<Phase 1.4 Routing Based Site Exclusion | Checksum: eb9e57e0
*common
t

%s
*constraints2]
[Time (s): cpu = 00:00:05 ; elapsed = 00:00:05 . Memory (MB): peak = 1342.828 ; gain = 0.000
B

Phase %s%s
101*constraints2
1.5 2
Build MacrosZ18-101
8
,Phase 1.5 Build Macros | Checksum: eddcf3fb
*common
t

%s
*constraints2]
[Time (s): cpu = 00:00:13 ; elapsed = 00:00:13 . Memory (MB): peak = 1342.828 ; gain = 0.000
V

Phase %s%s
101*constraints2
1.6 2"
 Implementation Feasibility checkZ18-101
 +
bAn IO Bus %s with more than one IO standard is found. Components associated with this bus are: %s
12*place2
FIXED_IO_mio2“*
ö 
	<MSGMETA::BEGIN::BLOCK>FIXED_IO_mio[0]<MSGMETA::END> of IOStandard LVCMOS18
	<MSGMETA::BEGIN::BLOCK>FIXED_IO_mio[1]<MSGMETA::END> of IOStandard LVCMOS18
	<MSGMETA::BEGIN::BLOCK>FIXED_IO_mio[2]<MSGMETA::END> of IOStandard LVCMOS18
	<MSGMETA::BEGIN::BLOCK>FIXED_IO_mio[3]<MSGMETA::END> of IOStandard LVCMOS18
	<MSGMETA::BEGIN::BLOCK>FIXED_IO_mio[4]<MSGMETA::END> of IOStandard LVCMOS18
	<MSGMETA::BEGIN::BLOCK>FIXED_IO_mio[5]<MSGMETA::END> of IOStandard LVCMOS18
	<MSGMETA::BEGIN::BLOCK>FIXED_IO_mio[6]<MSGMETA::END> of IOStandard LVCMOS18
	<MSGMETA::BEGIN::BLOCK>FIXED_IO_mio[7]<MSGMETA::END> of IOStandard LVCMOS18
	<MSGMETA::BEGIN::BLOCK>FIXED_IO_mio[8]<MSGMETA::END> of IOStandard LVCMOS18
	<MSGMETA::BEGIN::BLOCK>FIXED_IO_mio[9]<MSGMETA::END> of IOStandard LVCMOS18
	<MSGMETA::BEGIN::BLOCK>FIXED_IO_mio[10]<MSGMETA::END> of IOStandard LVCMOS18
	<MSGMETA::BEGIN::BLOCK>FIXED_IO_mio[11]<MSGMETA::END> of IOStandard LVCMOS18
	<MSGMETA::BEGIN::BLOCK>FIXED_IO_mio[12]<MSGMETA::END> of IOStandard LVCMOS18
	<MSGMETA::BEGIN::BLOCK>FIXED_IO_mio[13]<MSGMETA::END> of IOStandard LVCMOS18
	<MSGMETA::BEGIN::BLOCK>FIXED_IO_mio[14]<MSGMETA::END> of IOStandard LVCMOS18
	<MSGMETA::BEGIN::BLOCK>FIXED_IO_mio[15]<MSGMETA::END> of IOStandard LVCMOS18
	<MSGMETA::BEGIN::BLOCK>FIXED_IO_mio[16]<MSGMETA::END> of IOStandard HSTL_I_18
	<MSGMETA::BEGIN::BLOCK>FIXED_IO_mio[17]<MSGMETA::END> of IOStandard HSTL_I_18
	<MSGMETA::BEGIN::BLOCK>FIXED_IO_mio[18]<MSGMETA::END> of IOStandard HSTL_I_18
	<MSGMETA::BEGIN::BLOCK>FIXED_IO_mio[19]<MSGMETA::END> of IOStandard HSTL_I_18
	<MSGMETA::BEGIN::BLOCK>FIXED_IO_mio[20]<MSGMETA::END> of IOStandard HSTL_I_18
	<MSGMETA::BEGIN::BLOCK>FIXED_IO_mio[21]<MSGMETA::END> of IOStandard HSTL_I_18
	<MSGMETA::BEGIN::BLOCK>FIXED_IO_mio[22]<MSGMETA::END> of IOStandard HSTL_I_18
	<MSGMETA::BEGIN::BLOCK>FIXED_IO_mio[23]<MSGMETA::END> of IOStandard HSTL_I_18
	<MSGMETA::BEGIN::BLOCK>FIXED_IO_mio[24]<MSGMETA::END> of IOStandard HSTL_I_18
	<MSGMETA::BEGIN::BLOCK>FIXED_IO_mio[25]<MSGMETA::END> of IOStandard HSTL_I_18
	<MSGMETA::BEGIN::BLOCK>FIXED_IO_mio[26]<MSGMETA::END> of IOStandard HSTL_I_18
	<MSGMETA::BEGIN::BLOCK>FIXED_IO_mio[27]<MSGMETA::END> of IOStandard HSTL_I_18
	<MSGMETA::BEGIN::BLOCK>FIXED_IO_mio[28]<MSGMETA::END> of IOStandard LVCMOS18
	<MSGMETA::BEGIN::BLOCK>FIXED_IO_mio[29]<MSGMETA::END> of IOStandard LVCMOS18
	<MSGMETA::BEGIN::BLOCK>FIXED_IO_mio[30]<MSGMETA::END> of IOStandard LVCMOS18
	<MSGMETA::BEGIN::BLOCK>FIXED_IO_mio[31]<MSGMETA::END> of IOStandard LVCMOS18
	<MSGMETA::BEGIN::BLOCK>FIXED_IO_mio[32]<MSGMETA::END> of IOStandard LVCMOS18
	<MSGMETA::BEGIN::BLOCK>FIXED_IO_mio[33]<MSGMETA::END> of IOStandard LVCMOS18
	<MSGMETA::BEGIN::BLOCK>FIXED_IO_mio[34]<MSGMETA::END> of IOStandard LVCMOS18
	<MSGMETA::BEGIN::BLOCK>FIXED_IO_mio[35]<MSGMETA::END> of IOStandard LVCMOS18
	<MSGMETA::BEGIN::BLOCK>FIXED_IO_mio[36]<MSGMETA::END> of IOStandard LVCMOS18
	<MSGMETA::BEGIN::BLOCK>FIXED_IO_mio[37]<MSGMETA::END> of IOStandard LVCMOS18
	<MSGMETA::BEGIN::BLOCK>FIXED_IO_mio[38]<MSGMETA::END> of IOStandard LVCMOS18
	<MSGMETA::BEGIN::BLOCK>FIXED_IO_mio[39]<MSGMETA::END> of IOStandard LVCMOS18
	<MSGMETA::BEGIN::BLOCK>FIXED_IO_mio[40]<MSGMETA::END> of IOStandard LVCMOS18
	<MSGMETA::BEGIN::BLOCK>FIXED_IO_mio[41]<MSGMETA::END> of IOStandard LVCMOS18
	<MSGMETA::BEGIN::BLOCK>FIXED_IO_mio[42]<MSGMETA::END> of IOStandard LVCMOS18
	<MSGMETA::BEGIN::BLOCK>FIXED_IO_mio[43]<MSGMETA::END> of IOStandard LVCMOS18
	<MSGMETA::BEGIN::BLOCK>FIXED_IO_mio[44]<MSGMETA::END> of IOStandard LVCMOS18
	<MSGMETA::BEGIN::BLOCK>FIXED_IO_mio[45]<MSGMETA::END> of IOStandard LVCMOS18
	<MSGMETA::BEGIN::BLOCK>FIXED_IO_mio[46]<MSGMETA::END> of IOStandard LVCMOS18
	<MSGMETA::BEGIN::BLOCK>FIXED_IO_mio[47]<MSGMETA::END> of IOStandard LVCMOS18
	<MSGMETA::BEGIN::BLOCK>FIXED_IO_mio[48]<MSGMETA::END> of IOStandard LVCMOS18
	<MSGMETA::BEGIN::BLOCK>FIXED_IO_mio[49]<MSGMETA::END> of IOStandard LVCMOS18
	<MSGMETA::BEGIN::BLOCK>FIXED_IO_mio[50]<MSGMETA::END> of IOStandard LVCMOS18
	<MSGMETA::BEGIN::BLOCK>FIXED_IO_mio[51]<MSGMETA::END> of IOStandard LVCMOS18
	<MSGMETA::BEGIN::BLOCK>FIXED_IO_mio[52]<MSGMETA::END> of IOStandard LVCMOS18
	<MSGMETA::BEGIN::BLOCK>FIXED_IO_mio[53]<MSGMETA::END> of IOStandard LVCMOS18"
FIXED_IO_mio[0]"
FIXED_IO_mio[1]"
FIXED_IO_mio[2]"
FIXED_IO_mio[3]"
FIXED_IO_mio[4]"
FIXED_IO_mio[5]"
FIXED_IO_mio[6]"
FIXED_IO_mio[7]"
FIXED_IO_mio[8]"
FIXED_IO_mio[9]"
FIXED_IO_mio[10]"
FIXED_IO_mio[11]"
FIXED_IO_mio[12]"
FIXED_IO_mio[13]"
FIXED_IO_mio[14]"
FIXED_IO_mio[15]"
FIXED_IO_mio[16]"
FIXED_IO_mio[17]"
FIXED_IO_mio[18]"
FIXED_IO_mio[19]"
FIXED_IO_mio[20]"
FIXED_IO_mio[21]"
FIXED_IO_mio[22]"
FIXED_IO_mio[23]"
FIXED_IO_mio[24]"
FIXED_IO_mio[25]"
FIXED_IO_mio[26]"
FIXED_IO_mio[27]"
FIXED_IO_mio[28]"
FIXED_IO_mio[29]"
FIXED_IO_mio[30]"
FIXED_IO_mio[31]"
FIXED_IO_mio[32]"
FIXED_IO_mio[33]"
FIXED_IO_mio[34]"
FIXED_IO_mio[35]"
FIXED_IO_mio[36]"
FIXED_IO_mio[37]"
FIXED_IO_mio[38]"
FIXED_IO_mio[39]"
FIXED_IO_mio[40]"
FIXED_IO_mio[41]"
FIXED_IO_mio[42]"
FIXED_IO_mio[43]"
FIXED_IO_mio[44]"
FIXED_IO_mio[45]"
FIXED_IO_mio[46]"
FIXED_IO_mio[47]"
FIXED_IO_mio[48]"
FIXED_IO_mio[49]"
FIXED_IO_mio[50]"
FIXED_IO_mio[51]"
FIXED_IO_mio[52]"
FIXED_IO_mio[53]8Z30-12
L
@Phase 1.6 Implementation Feasibility check | Checksum: eddcf3fb
*common
t

%s
*constraints2]
[Time (s): cpu = 00:00:19 ; elapsed = 00:00:19 . Memory (MB): peak = 1342.828 ; gain = 0.000
E

Phase %s%s
101*constraints2
1.7 2
Pre-Place CellsZ18-101
;
/Phase 1.7 Pre-Place Cells | Checksum: eddcf3fb
*common
t

%s
*constraints2]
[Time (s): cpu = 00:00:19 ; elapsed = 00:00:19 . Memory (MB): peak = 1342.828 ; gain = 0.000
h

Phase %s%s
101*constraints2
1.8 24
2IO Placement/ Clock Placement/ Build Placer DeviceZ18-101
^
RPhase 1.8 IO Placement/ Clock Placement/ Build Placer Device | Checksum: eddcf3fb
*common
u

%s
*constraints2^
\Time (s): cpu = 00:00:30 ; elapsed = 00:00:31 . Memory (MB): peak = 1372.840 ; gain = 30.012
P

Phase %s%s
101*constraints2
1.9 2
Build Placer Netlist ModelZ18-101
I

Phase %s%s
101*constraints2
1.9.1 2
Place Init DesignZ18-101
J

Phase %s%s
101*constraints2

1.9.1.1 2
Build Clock DataZ18-101
@
4Phase 1.9.1.1 Build Clock Data | Checksum: d15e0368
*common
u

%s
*constraints2^
\Time (s): cpu = 00:01:10 ; elapsed = 00:00:51 . Memory (MB): peak = 1372.840 ; gain = 30.012
?
3Phase 1.9.1 Place Init Design | Checksum: 72f37961
*common
u

%s
*constraints2^
\Time (s): cpu = 00:01:17 ; elapsed = 00:00:58 . Memory (MB): peak = 1372.840 ; gain = 30.012
F
:Phase 1.9 Build Placer Netlist Model | Checksum: 72f37961
*common
u

%s
*constraints2^
\Time (s): cpu = 00:01:17 ; elapsed = 00:00:58 . Memory (MB): peak = 1372.840 ; gain = 30.012
N

Phase %s%s
101*constraints2
1.10 2
Constrain Clocks/MacrosZ18-101
Y

Phase %s%s
101*constraints2	
1.10.1 2"
 Constrain Global/Regional ClocksZ18-101
O
CPhase 1.10.1 Constrain Global/Regional Clocks | Checksum: 6447d87f
*common
u

%s
*constraints2^
\Time (s): cpu = 00:01:18 ; elapsed = 00:00:58 . Memory (MB): peak = 1372.840 ; gain = 30.012
D
8Phase 1.10 Constrain Clocks/Macros | Checksum: 6447d87f
*common
u

%s
*constraints2^
\Time (s): cpu = 00:01:18 ; elapsed = 00:00:58 . Memory (MB): peak = 1372.840 ; gain = 30.012
?
3Phase 1 Placer Initialization | Checksum: 6447d87f
*common
u

%s
*constraints2^
\Time (s): cpu = 00:01:18 ; elapsed = 00:00:58 . Memory (MB): peak = 1372.840 ; gain = 30.012
D

Phase %s%s
101*constraints2
2 2
Global PlacementZ18-101
:
.Phase 2 Global Placement | Checksum: bbd0740a
*common
u

%s
*constraints2^
\Time (s): cpu = 00:13:28 ; elapsed = 00:05:34 . Memory (MB): peak = 1372.840 ; gain = 30.012
D

Phase %s%s
101*constraints2
3 2
Detail PlacementZ18-101
P

Phase %s%s
101*constraints2
3.1 2
Commit Multi Column MacrosZ18-101
F
:Phase 3.1 Commit Multi Column Macros | Checksum: bbd0740a
*common
u

%s
*constraints2^
\Time (s): cpu = 00:13:28 ; elapsed = 00:05:35 . Memory (MB): peak = 1372.840 ; gain = 30.012
R

Phase %s%s
101*constraints2
3.2 2
Commit Most Macros & LUTRAMsZ18-101
H
<Phase 3.2 Commit Most Macros & LUTRAMs | Checksum: ba18ed45
*common
u

%s
*constraints2^
\Time (s): cpu = 00:14:03 ; elapsed = 00:05:56 . Memory (MB): peak = 1372.840 ; gain = 30.012
L

Phase %s%s
101*constraints2
3.3 2
Area Swap OptimizationZ18-101
B
6Phase 3.3 Area Swap Optimization | Checksum: 6d7bbcd8
*common
u

%s
*constraints2^
\Time (s): cpu = 00:14:05 ; elapsed = 00:05:57 . Memory (MB): peak = 1372.840 ; gain = 30.012
K

Phase %s%s
101*constraints2
3.4 2
Timing Path OptimizerZ18-101
A
5Phase 3.4 Timing Path Optimizer | Checksum: da7faf7f
*common
u

%s
*constraints2^
\Time (s): cpu = 00:14:45 ; elapsed = 00:06:14 . Memory (MB): peak = 1372.840 ; gain = 30.012
V

Phase %s%s
101*constraints2
3.5 2"
 Commit Small Macros & Core LogicZ18-101
L
@Phase 3.5 Commit Small Macros & Core Logic | Checksum: 2476c4a2
*common
u

%s
*constraints2^
\Time (s): cpu = 00:15:18 ; elapsed = 00:06:42 . Memory (MB): peak = 1402.852 ; gain = 60.023
H

Phase %s%s
101*constraints2
3.6 2
Re-assign LUT pinsZ18-101
>
2Phase 3.6 Re-assign LUT pins | Checksum: 2476c4a2
*common
u

%s
*constraints2^
\Time (s): cpu = 00:15:21 ; elapsed = 00:06:45 . Memory (MB): peak = 1402.852 ; gain = 60.023
:
.Phase 3 Detail Placement | Checksum: 2476c4a2
*common
u

%s
*constraints2^
\Time (s): cpu = 00:15:22 ; elapsed = 00:06:45 . Memory (MB): peak = 1402.852 ; gain = 60.023
\

Phase %s%s
101*constraints2
4 2*
(Post Placement Optimization and Clean-UpZ18-101
X

Phase %s%s
101*constraints2
4.1 2$
"Post Placement Timing OptimizationZ18-101
N
BPhase 4.1 Post Placement Timing Optimization | Checksum: c50c7d69
*common
u

%s
*constraints2^
\Time (s): cpu = 00:16:58 ; elapsed = 00:08:08 . Memory (MB): peak = 1402.852 ; gain = 60.023
L

Phase %s%s
101*constraints2
4.2 2
Post Placement CleanupZ18-101
B
6Phase 4.2 Post Placement Cleanup | Checksum: c50c7d69
*common
u

%s
*constraints2^
\Time (s): cpu = 00:16:58 ; elapsed = 00:08:08 . Memory (MB): peak = 1402.852 ; gain = 60.023
F

Phase %s%s
101*constraints2
4.3 2
Placer ReportingZ18-101
[
!Post Placement Timing Summary %s
2*	placeflow2
| WNS=0.224  | TNS=0.000  |
Z30-100
<
0Phase 4.3 Placer Reporting | Checksum: d43f443f
*common
u

%s
*constraints2^
\Time (s): cpu = 00:17:04 ; elapsed = 00:08:11 . Memory (MB): peak = 1402.852 ; gain = 60.023
M

Phase %s%s
101*constraints2
4.4 2
Final Placement CleanupZ18-101
C
7Phase 4.4 Final Placement Cleanup | Checksum: c1d3abe2
*common
u

%s
*constraints2^
\Time (s): cpu = 00:17:04 ; elapsed = 00:08:11 . Memory (MB): peak = 1402.852 ; gain = 60.023
R
FPhase 4 Post Placement Optimization and Clean-Up | Checksum: c1d3abe2
*common
u

%s
*constraints2^
\Time (s): cpu = 00:17:04 ; elapsed = 00:08:11 . Memory (MB): peak = 1402.852 ; gain = 60.023
5
)Ending Placer Task | Checksum: 11aab2fe9
*common
u

%s
*constraints2^
\Time (s): cpu = 00:17:05 ; elapsed = 00:08:12 . Memory (MB): peak = 1402.852 ; gain = 60.023
u
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
522
22
02
0Z4-41
C
%s completed successfully
29*	vivadotcl2
place_designZ4-42
¢
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
place_design: 2

00:17:062

00:08:132

1402.8522
60.023Z17-268
O

DEBUG : %s144*timing2*
(Generate clock report | CPU: 2.48 secs 
Z38-163
|
preport_utilization: Time (s): cpu = 00:00:01 ; elapsed = 00:00:01 . Memory (MB): peak = 1402.852 ; gain = 0.000
*common
[

DEBUG : %s134*designutils21
/Generate Control Sets report | CPU: 0.51 secs 
Z20-134
4
Writing XDEF routing.
211*designutilsZ20-211
A
#Writing XDEF routing logical nets.
209*designutilsZ20-209
A
#Writing XDEF routing special nets.
210*designutilsZ20-210
¨
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Write XDEF Complete: 2

00:00:062

00:00:062

1402.8522
0.000Z17-268
¥
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
write_checkpoint: 2

00:00:152

00:00:152

1402.8522
0.000Z17-268


End Record