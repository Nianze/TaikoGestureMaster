
I
Command: %s
53*	vivadotcl2!
route_design -directive ExploreZ4-113
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
route_designZ4-22
5
Running DRC with %s threads
24*drc2
4Z23-27
G
DRC finished with %s
79*	vivadotcl2
0 Errors, 1 WarningsZ4-198
\
BPlease refer to the DRC report (report_drc) for more information.
80*	vivadotclZ4-199
;

Starting %s Task
103*constraints2	
RoutingZ18-103
@
Using Router directive '%s'.
104*route2	
ExploreZ35-270
^
BMultithreading enabled for route_design using a maximum of %s CPUs97*route2
4Z35-254
9

Starting %s Task
103*constraints2
RouteZ18-103
C

Phase %s%s
101*constraints2
1 2
Build RT DesignZ18-101
T

Phase %s%s
101*constraints2
1.1 2 
Build Netlist & NodeGraph (MT)Z18-101
³
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2
00:00:00.532
00:00:00.272

1433.3872
0.000Z17-268
C
7Phase 1.1 Build Netlist & NodeGraph (MT) | Checksum: 0
*common
u

%s
*constraints2^
\Time (s): cpu = 00:00:58 ; elapsed = 00:00:32 . Memory (MB): peak = 1490.875 ; gain = 57.488
2
&Phase 1 Build RT Design | Checksum: 0
*common
u

%s
*constraints2^
\Time (s): cpu = 00:01:01 ; elapsed = 00:00:35 . Memory (MB): peak = 1490.875 ; gain = 57.488
I

Phase %s%s
101*constraints2
2 2
Router InitializationZ18-101
B

Phase %s%s
101*constraints2
2.1 2
Create TimerZ18-101
8
,Phase 2.1 Create Timer | Checksum: 8b6b28db
*common
u

%s
*constraints2^
\Time (s): cpu = 00:01:03 ; elapsed = 00:00:37 . Memory (MB): peak = 1490.875 ; gain = 57.488
Q
3Estimated Global Vertical Wire Utilization = %s %%
23*route2
7.05Z35-23
T
5Estimated Global Horizontal Wire Utilization = %s %%
22*route2
12.07Z35-22
E

Phase %s%s
101*constraints2
2.2 2
Restore RoutingZ18-101
=
Design has %s routable nets.
92*route2
53321Z35-249
?
#Restored %s nets from the routeDb.
95*route2
0Z35-252
E
)Found %s nets with FIXED_ROUTE property.
94*route2
0Z35-251
;
/Phase 2.2 Restore Routing | Checksum: 8b6b28db
*common
u

%s
*constraints2^
\Time (s): cpu = 00:01:04 ; elapsed = 00:00:38 . Memory (MB): peak = 1494.875 ; gain = 61.488
I

Phase %s%s
101*constraints2
2.3 2
Special Net RoutingZ18-101
?
3Phase 2.3 Special Net Routing | Checksum: 92bf8054
*common
u

%s
*constraints2^
\Time (s): cpu = 00:01:06 ; elapsed = 00:00:40 . Memory (MB): peak = 1512.656 ; gain = 79.270
M

Phase %s%s
101*constraints2
2.4 2
Local Clock Net RoutingZ18-101
C
7Phase 2.4 Local Clock Net Routing | Checksum: 92bf8054
*common
u

%s
*constraints2^
\Time (s): cpu = 00:01:06 ; elapsed = 00:00:40 . Memory (MB): peak = 1512.656 ; gain = 79.270
C

Phase %s%s
101*constraints2
2.5 2
Update TimingZ18-101
S

Phase %s%s
101*constraints2
2.5.1 2
Update timing with NCN CRPRZ18-101
H

Phase %s%s
101*constraints2

2.5.1.1 2
Hold BudgetingZ18-101
>
2Phase 2.5.1.1 Hold Budgeting | Checksum: 92bf8054
*common
v

%s
*constraints2_
]Time (s): cpu = 00:02:05 ; elapsed = 00:01:07 . Memory (MB): peak = 1536.875 ; gain = 103.488
I
=Phase 2.5.1 Update timing with NCN CRPR | Checksum: 92bf8054
*common
v

%s
*constraints2_
]Time (s): cpu = 00:02:06 ; elapsed = 00:01:07 . Memory (MB): peak = 1536.875 ; gain = 103.488
9
-Phase 2.5 Update Timing | Checksum: 92bf8054
*common
v

%s
*constraints2_
]Time (s): cpu = 00:02:06 ; elapsed = 00:01:08 . Memory (MB): peak = 1536.875 ; gain = 103.488
n
Estimated Timing Summary %s
57*route2:
8| WNS=0.354  | TNS=0      | WHS=-0.368 | THS=-1.38e+03|
Z35-57
?

Phase %s%s
101*constraints2
2.6 2
	BudgetingZ18-101
5
)Phase 2.6 Budgeting | Checksum: 92bf8054
*common
v

%s
*constraints2_
]Time (s): cpu = 00:02:46 ; elapsed = 00:01:32 . Memory (MB): peak = 1544.285 ; gain = 110.898
?
3Phase 2 Router Initialization | Checksum: 92bf8054
*common
v

%s
*constraints2_
]Time (s): cpu = 00:02:46 ; elapsed = 00:01:32 . Memory (MB): peak = 1544.285 ; gain = 110.898
C

Phase %s%s
101*constraints2
3 2
Initial RoutingZ18-101
9
-Phase 3 Initial Routing | Checksum: d4ede598
*common
v

%s
*constraints2_
]Time (s): cpu = 00:03:10 ; elapsed = 00:01:40 . Memory (MB): peak = 1544.285 ; gain = 110.898
F

Phase %s%s
101*constraints2
4 2
Rip-up And RerouteZ18-101
H

Phase %s%s
101*constraints2
4.1 2
Global Iteration 0Z18-101
G

Phase %s%s
101*constraints2
4.1.1 2
Remove OverlapsZ18-101
=
1Phase 4.1.1 Remove Overlaps | Checksum: 92cd7f15
*common
v

%s
*constraints2_
]Time (s): cpu = 00:04:16 ; elapsed = 00:02:09 . Memory (MB): peak = 1544.285 ; gain = 110.898
E

Phase %s%s
101*constraints2
4.1.2 2
Update TimingZ18-101
;
/Phase 4.1.2 Update Timing | Checksum: 92cd7f15
*common
v

%s
*constraints2_
]Time (s): cpu = 00:04:34 ; elapsed = 00:02:16 . Memory (MB): peak = 1544.285 ; gain = 110.898
l
Estimated Timing Summary %s
57*route28
6| WNS=0.048  | TNS=0      | WHS=N/A    | THS=N/A    |
Z35-57
L

Phase %s%s
101*constraints2
4.1.3 2
collectNewHoldAndFixZ18-101
B
6Phase 4.1.3 collectNewHoldAndFix | Checksum: fcd64e0c
*common
v

%s
*constraints2_
]Time (s): cpu = 00:04:43 ; elapsed = 00:02:25 . Memory (MB): peak = 1544.285 ; gain = 110.898
>
2Phase 4.1 Global Iteration 0 | Checksum: fcd64e0c
*common
v

%s
*constraints2_
]Time (s): cpu = 00:04:43 ; elapsed = 00:02:25 . Memory (MB): peak = 1544.285 ; gain = 110.898
H

Phase %s%s
101*constraints2
4.2 2
Global Iteration 1Z18-101
G

Phase %s%s
101*constraints2
4.2.1 2
Remove OverlapsZ18-101
=
1Phase 4.2.1 Remove Overlaps | Checksum: 861ce1b7
*common
v

%s
*constraints2_
]Time (s): cpu = 00:04:46 ; elapsed = 00:02:28 . Memory (MB): peak = 1544.285 ; gain = 110.898
E

Phase %s%s
101*constraints2
4.2.2 2
Update TimingZ18-101
;
/Phase 4.2.2 Update Timing | Checksum: 861ce1b7
*common
v

%s
*constraints2_
]Time (s): cpu = 00:04:48 ; elapsed = 00:02:29 . Memory (MB): peak = 1544.285 ; gain = 110.898
l
Estimated Timing Summary %s
57*route28
6| WNS=0.048  | TNS=0      | WHS=N/A    | THS=N/A    |
Z35-57
L

Phase %s%s
101*constraints2
4.2.3 2
collectNewHoldAndFixZ18-101
B
6Phase 4.2.3 collectNewHoldAndFix | Checksum: 438aee68
*common
v

%s
*constraints2_
]Time (s): cpu = 00:04:49 ; elapsed = 00:02:30 . Memory (MB): peak = 1544.285 ; gain = 110.898
>
2Phase 4.2 Global Iteration 1 | Checksum: 438aee68
*common
v

%s
*constraints2_
]Time (s): cpu = 00:04:49 ; elapsed = 00:02:30 . Memory (MB): peak = 1544.285 ; gain = 110.898
<
0Phase 4 Rip-up And Reroute | Checksum: 438aee68
*common
v

%s
*constraints2_
]Time (s): cpu = 00:04:49 ; elapsed = 00:02:30 . Memory (MB): peak = 1544.285 ; gain = 110.898
A

Phase %s%s
101*constraints2
5 2
Delay CleanUpZ18-101
C

Phase %s%s
101*constraints2
5.1 2
Update TimingZ18-101
9
-Phase 5.1 Update Timing | Checksum: 438aee68
*common
v

%s
*constraints2_
]Time (s): cpu = 00:05:05 ; elapsed = 00:02:37 . Memory (MB): peak = 1544.285 ; gain = 110.898
l
Estimated Timing Summary %s
57*route28
6| WNS=0.048  | TNS=0      | WHS=N/A    | THS=N/A    |
Z35-57
7
+Phase 5 Delay CleanUp | Checksum: 438aee68
*common
v

%s
*constraints2_
]Time (s): cpu = 00:05:05 ; elapsed = 00:02:37 . Memory (MB): peak = 1544.285 ; gain = 110.898
A

Phase %s%s
101*constraints2
6 2
Post Hold FixZ18-101
H

Phase %s%s
101*constraints2
6.1 2
Full Hold AnalysisZ18-101
E

Phase %s%s
101*constraints2
6.1.1 2
Update TimingZ18-101
;
/Phase 6.1.1 Update Timing | Checksum: 438aee68
*common
v

%s
*constraints2_
]Time (s): cpu = 00:05:29 ; elapsed = 00:02:47 . Memory (MB): peak = 1544.285 ; gain = 110.898
l
Estimated Timing Summary %s
57*route28
6| WNS=0.048  | TNS=0      | WHS=0.011  | THS=0      |
Z35-57
>
2Phase 6.1 Full Hold Analysis | Checksum: 438aee68
*common
v

%s
*constraints2_
]Time (s): cpu = 00:05:30 ; elapsed = 00:02:48 . Memory (MB): peak = 1544.285 ; gain = 110.898
7
+Phase 6 Post Hold Fix | Checksum: 438aee68
*common
v

%s
*constraints2_
]Time (s): cpu = 00:05:30 ; elapsed = 00:02:48 . Memory (MB): peak = 1544.285 ; gain = 110.898
G

Phase %s%s
101*constraints2
7 2
Timing VerificationZ18-101
C

Phase %s%s
101*constraints2
7.1 2
Update TimingZ18-101
9
-Phase 7.1 Update Timing | Checksum: 438aee68
*common
v

%s
*constraints2_
]Time (s): cpu = 00:05:53 ; elapsed = 00:02:57 . Memory (MB): peak = 1544.285 ; gain = 110.898
l
Estimated Timing Summary %s
57*route28
6| WNS=0.048  | TNS=0      | WHS=N/A    | THS=N/A    |
Z35-57
=
1Phase 7 Timing Verification | Checksum: 438aee68
*common
v

%s
*constraints2_
]Time (s): cpu = 00:05:53 ; elapsed = 00:02:57 . Memory (MB): peak = 1544.285 ; gain = 110.898
I

Phase %s%s
101*constraints2
8 2
Verifying routed netsZ18-101
?
3Phase 8 Verifying routed nets | Checksum: 438aee68
*common
v

%s
*constraints2_
]Time (s): cpu = 00:05:54 ; elapsed = 00:02:58 . Memory (MB): peak = 1544.285 ; gain = 110.898
E

Phase %s%s
101*constraints2
9 2
Depositing RoutesZ18-101
;
/Phase 9 Depositing Routes | Checksum: 6488531d
*common
v

%s
*constraints2_
]Time (s): cpu = 00:06:03 ; elapsed = 00:03:06 . Memory (MB): peak = 1544.285 ; gain = 110.898
G

Phase %s%s
101*constraints2
10 2
Post Router TimingZ18-101
o
Post Routing Timing Summary %s
20*route28
6| WNS=0.049  | TNS=0.000  | WHS=0.012  | THS=0.000  |
Z35-20
=
'The design met the timing requirement.
61*routeZ35-61
6
*Phase 10 Post Router Timing | Checksum: 0
*common
v

%s
*constraints2_
]Time (s): cpu = 00:07:04 ; elapsed = 00:03:30 . Memory (MB): peak = 1544.285 ; gain = 110.898
4
Router Completed Successfully
16*routeZ35-16
,
 Ending Route Task | Checksum: 0
*common
v

%s
*constraints2_
]Time (s): cpu = 00:07:04 ; elapsed = 00:03:30 . Memory (MB): peak = 1544.285 ; gain = 110.898
j
QWebTalk data collection is enabled (User setting is ON. Install Setting is ON.).
118*projectZ1-118
§
†'%s' has been successfully sent to Xilinx on %s. For additional details about this file, please refer to the Webtalk help file at %s.
186*common2­
ª/home/student/nl443/ece5775/project/TaikoGestureMaster/xapp1167_vivado/sw/gesture_stream_v1/ipi_proj/project/zynq_base_trd_2013.2.runs/impl_1/usage_statistics_webtalk.xml2
Tue Dec  8 00:13:31 201529
7/opt/xilinx/Vivado/2013.2/doc/webtalk_introduction.htmlZ17-186
v

%s
*constraints2_
]Time (s): cpu = 00:07:05 ; elapsed = 00:03:36 . Memory (MB): peak = 1544.285 ; gain = 110.898
u
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
812
22
02
0Z4-41
C
%s completed successfully
29*	vivadotcl2
route_designZ4-42
£
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
route_design: 2

00:07:122

00:03:412

1544.2852	
111.398Z17-268
5
Running DRC with %s threads
24*drc2
4Z23-27
§
#The results of DRC are in file %s.
168*coretcl2æ
¯/home/student/nl443/ece5775/project/TaikoGestureMaster/xapp1167_vivado/sw/gesture_stream_v1/ipi_proj/project/zynq_base_trd_2013.2.runs/impl_1/system_top_wrapper_drc_routed.rpt¯/home/student/nl443/ece5775/project/TaikoGestureMaster/xapp1167_vivado/sw/gesture_stream_v1/ipi_proj/project/zynq_base_trd_2013.2.runs/impl_1/system_top_wrapper_drc_routed.rpt8Z2-168
Ÿ
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
report_drc: 2

00:00:262

00:00:112

1544.5352
0.250Z17-268
Ì
{ Setting default frequency of %s MHz on the clock %s . Please specify frequency of this clock for accurate power estimate.
164*power2
0.002/
-system_top_i/processing_system7_1/inst/PS_CLKZ33-164
Í
{ Setting default frequency of %s MHz on the clock %s . Please specify frequency of this clock for accurate power estimate.
164*power2
0.0020
.system_top_i/processing_system7_1/inst/DDR_ClkZ33-164
Ï
{ Setting default frequency of %s MHz on the clock %s . Please specify frequency of this clock for accurate power estimate.
164*power2
0.0022
0system_top_i/processing_system7_1/inst/DDR_Clk_nZ33-164
Í
{ Setting default frequency of %s MHz on the clock %s . Please specify frequency of this clock for accurate power estimate.
164*power2
0.0020
.system_top_i/processing_system7_1/inst/DDR_CKEZ33-164
B
,Running Vector-less Activity Propagation...
51*powerZ33-51
G
3
Finished Running Vector-less Activity Propagation
1*powerZ33-1
¡
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
report_power: 2

00:02:252

00:01:262

1545.1602
0.625Z17-268
n
UpdateTimingParams:%s.
91*timing2>
< Speed grade: -1, Delay Type: min_max, Constraints type: SDCZ38-91
a
CMultithreading enabled for timing update using a maximum of %s CPUs155*timing2
4Z38-191
«
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
report_timing_summary: 2

00:00:322

00:00:212

1620.3162
75.156Z17-268
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

00:00:102

00:00:102

1620.3162
0.000Z17-268
¥
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
write_checkpoint: 2

00:00:182

00:00:192

1620.3162
0.000Z17-268


End Record