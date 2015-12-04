
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
00:00:00.562
00:00:00.282

1432.8712
0.000Z17-268
C
7Phase 1.1 Build Netlist & NodeGraph (MT) | Checksum: 0
*common
u

%s
*constraints2^
\Time (s): cpu = 00:00:58 ; elapsed = 00:00:32 . Memory (MB): peak = 1483.289 ; gain = 50.418
2
&Phase 1 Build RT Design | Checksum: 0
*common
u

%s
*constraints2^
\Time (s): cpu = 00:01:01 ; elapsed = 00:00:35 . Memory (MB): peak = 1483.289 ; gain = 50.418
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
,Phase 2.1 Create Timer | Checksum: c0da6d84
*common
u

%s
*constraints2^
\Time (s): cpu = 00:01:03 ; elapsed = 00:00:37 . Memory (MB): peak = 1483.289 ; gain = 50.418
Q
3Estimated Global Vertical Wire Utilization = %s %%
23*route2
8.00Z35-23
T
5Estimated Global Horizontal Wire Utilization = %s %%
22*route2
13.88Z35-22
E

Phase %s%s
101*constraints2
2.2 2
Restore RoutingZ18-101
=
Design has %s routable nets.
92*route2
52518Z35-249
?
#Restored %s nets from the routeDb.
95*route2
0Z35-252
E
)Found %s nets with FIXED_ROUTE property.
94*route2
0Z35-251
;
/Phase 2.2 Restore Routing | Checksum: c0da6d84
*common
u

%s
*constraints2^
\Time (s): cpu = 00:01:03 ; elapsed = 00:00:38 . Memory (MB): peak = 1487.289 ; gain = 54.418
I

Phase %s%s
101*constraints2
2.3 2
Special Net RoutingZ18-101
?
3Phase 2.3 Special Net Routing | Checksum: f0bef4c3
*common
u

%s
*constraints2^
\Time (s): cpu = 00:01:06 ; elapsed = 00:00:40 . Memory (MB): peak = 1506.070 ; gain = 73.199
M

Phase %s%s
101*constraints2
2.4 2
Local Clock Net RoutingZ18-101
C
7Phase 2.4 Local Clock Net Routing | Checksum: f0bef4c3
*common
u

%s
*constraints2^
\Time (s): cpu = 00:01:06 ; elapsed = 00:00:41 . Memory (MB): peak = 1506.070 ; gain = 73.199
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
2Phase 2.5.1.1 Hold Budgeting | Checksum: f0bef4c3
*common
u

%s
*constraints2^
\Time (s): cpu = 00:02:05 ; elapsed = 00:01:08 . Memory (MB): peak = 1530.141 ; gain = 97.270
I
=Phase 2.5.1 Update timing with NCN CRPR | Checksum: f0bef4c3
*common
u

%s
*constraints2^
\Time (s): cpu = 00:02:05 ; elapsed = 00:01:08 . Memory (MB): peak = 1530.141 ; gain = 97.270
9
-Phase 2.5 Update Timing | Checksum: f0bef4c3
*common
u

%s
*constraints2^
\Time (s): cpu = 00:02:05 ; elapsed = 00:01:08 . Memory (MB): peak = 1530.141 ; gain = 97.270
n
Estimated Timing Summary %s
57*route2:
8| WNS=0.13   | TNS=0      | WHS=-0.357 | THS=-1.25e+03|
Z35-57
?

Phase %s%s
101*constraints2
2.6 2
	BudgetingZ18-101
5
)Phase 2.6 Budgeting | Checksum: f0bef4c3
*common
v

%s
*constraints2_
]Time (s): cpu = 00:02:45 ; elapsed = 00:01:32 . Memory (MB): peak = 1534.141 ; gain = 101.270
?
3Phase 2 Router Initialization | Checksum: f0bef4c3
*common
v

%s
*constraints2_
]Time (s): cpu = 00:02:45 ; elapsed = 00:01:33 . Memory (MB): peak = 1534.141 ; gain = 101.270
C

Phase %s%s
101*constraints2
3 2
Initial RoutingZ18-101
9
-Phase 3 Initial Routing | Checksum: 12d09a10
*common
v

%s
*constraints2_
]Time (s): cpu = 00:03:15 ; elapsed = 00:01:43 . Memory (MB): peak = 1534.141 ; gain = 101.270
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
1Phase 4.1.1 Remove Overlaps | Checksum: 4c9aef95
*common
v

%s
*constraints2_
]Time (s): cpu = 00:04:30 ; elapsed = 00:02:16 . Memory (MB): peak = 1534.141 ; gain = 101.270
E

Phase %s%s
101*constraints2
4.1.2 2
Update TimingZ18-101
;
/Phase 4.1.2 Update Timing | Checksum: 4c9aef95
*common
v

%s
*constraints2_
]Time (s): cpu = 00:04:48 ; elapsed = 00:02:23 . Memory (MB): peak = 1534.141 ; gain = 101.270
l
Estimated Timing Summary %s
57*route28
6| WNS=-0.128 | TNS=-0.676 | WHS=N/A    | THS=N/A    |
Z35-57
L

Phase %s%s
101*constraints2
4.1.3 2
collectNewHoldAndFixZ18-101
B
6Phase 4.1.3 collectNewHoldAndFix | Checksum: a7841af7
*common
v

%s
*constraints2_
]Time (s): cpu = 00:04:53 ; elapsed = 00:02:27 . Memory (MB): peak = 1534.141 ; gain = 101.270
I

Phase %s%s
101*constraints2
4.1.4 2
GlobIterForTimingZ18-101
G

Phase %s%s
101*constraints2

4.1.4.1 2
Update TimingZ18-101
=
1Phase 4.1.4.1 Update Timing | Checksum: 60ece8c9
*common
v

%s
*constraints2_
]Time (s): cpu = 00:04:56 ; elapsed = 00:02:29 . Memory (MB): peak = 1534.141 ; gain = 101.270
l
Estimated Timing Summary %s
57*route28
6| WNS=0.0556 | TNS=0      | WHS=N/A    | THS=N/A    |
Z35-57
H

Phase %s%s
101*constraints2

4.1.4.2 2
Fast BudgetingZ18-101
>
2Phase 4.1.4.2 Fast Budgeting | Checksum: 60ece8c9
*common
v

%s
*constraints2_
]Time (s): cpu = 00:05:02 ; elapsed = 00:02:35 . Memory (MB): peak = 1546.180 ; gain = 113.309
?
3Phase 4.1.4 GlobIterForTiming | Checksum: ea6d389b
*common
v

%s
*constraints2_
]Time (s): cpu = 00:05:04 ; elapsed = 00:02:37 . Memory (MB): peak = 1546.180 ; gain = 113.309
>
2Phase 4.1 Global Iteration 0 | Checksum: ea6d389b
*common
v

%s
*constraints2_
]Time (s): cpu = 00:05:04 ; elapsed = 00:02:37 . Memory (MB): peak = 1546.180 ; gain = 113.309
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
1Phase 4.2.1 Remove Overlaps | Checksum: cdddbe14
*common
v

%s
*constraints2_
]Time (s): cpu = 00:05:42 ; elapsed = 00:03:03 . Memory (MB): peak = 1546.180 ; gain = 113.309
E

Phase %s%s
101*constraints2
4.2.2 2
Update TimingZ18-101
;
/Phase 4.2.2 Update Timing | Checksum: cdddbe14
*common
v

%s
*constraints2_
]Time (s): cpu = 00:05:45 ; elapsed = 00:03:04 . Memory (MB): peak = 1546.180 ; gain = 113.309
l
Estimated Timing Summary %s
57*route28
6| WNS=0.033  | TNS=0      | WHS=N/A    | THS=N/A    |
Z35-57
L

Phase %s%s
101*constraints2
4.2.3 2
collectNewHoldAndFixZ18-101
B
6Phase 4.2.3 collectNewHoldAndFix | Checksum: 406058ed
*common
v

%s
*constraints2_
]Time (s): cpu = 00:05:47 ; elapsed = 00:03:05 . Memory (MB): peak = 1546.180 ; gain = 113.309
>
2Phase 4.2 Global Iteration 1 | Checksum: 406058ed
*common
v

%s
*constraints2_
]Time (s): cpu = 00:05:47 ; elapsed = 00:03:05 . Memory (MB): peak = 1546.180 ; gain = 113.309
<
0Phase 4 Rip-up And Reroute | Checksum: 406058ed
*common
v

%s
*constraints2_
]Time (s): cpu = 00:05:47 ; elapsed = 00:03:06 . Memory (MB): peak = 1546.180 ; gain = 113.309
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
-Phase 5.1 Update Timing | Checksum: 406058ed
*common
v

%s
*constraints2_
]Time (s): cpu = 00:06:03 ; elapsed = 00:03:12 . Memory (MB): peak = 1546.180 ; gain = 113.309
l
Estimated Timing Summary %s
57*route28
6| WNS=0.047  | TNS=0      | WHS=N/A    | THS=N/A    |
Z35-57
7
+Phase 5 Delay CleanUp | Checksum: 406058ed
*common
v

%s
*constraints2_
]Time (s): cpu = 00:06:03 ; elapsed = 00:03:12 . Memory (MB): peak = 1546.180 ; gain = 113.309
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
/Phase 6.1.1 Update Timing | Checksum: 406058ed
*common
v

%s
*constraints2_
]Time (s): cpu = 00:06:27 ; elapsed = 00:03:23 . Memory (MB): peak = 1546.180 ; gain = 113.309
l
Estimated Timing Summary %s
57*route28
6| WNS=0.047  | TNS=0      | WHS=0.021  | THS=0      |
Z35-57
>
2Phase 6.1 Full Hold Analysis | Checksum: 406058ed
*common
v

%s
*constraints2_
]Time (s): cpu = 00:06:27 ; elapsed = 00:03:23 . Memory (MB): peak = 1546.180 ; gain = 113.309
7
+Phase 6 Post Hold Fix | Checksum: 406058ed
*common
v

%s
*constraints2_
]Time (s): cpu = 00:06:28 ; elapsed = 00:03:23 . Memory (MB): peak = 1546.180 ; gain = 113.309
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
-Phase 7.1 Update Timing | Checksum: 406058ed
*common
v

%s
*constraints2_
]Time (s): cpu = 00:06:51 ; elapsed = 00:03:33 . Memory (MB): peak = 1546.180 ; gain = 113.309
l
Estimated Timing Summary %s
57*route28
6| WNS=0.047  | TNS=0      | WHS=N/A    | THS=N/A    |
Z35-57
=
1Phase 7 Timing Verification | Checksum: 406058ed
*common
v

%s
*constraints2_
]Time (s): cpu = 00:06:52 ; elapsed = 00:03:33 . Memory (MB): peak = 1546.180 ; gain = 113.309
I

Phase %s%s
101*constraints2
8 2
Verifying routed netsZ18-101
?
3Phase 8 Verifying routed nets | Checksum: 406058ed
*common
v

%s
*constraints2_
]Time (s): cpu = 00:06:52 ; elapsed = 00:03:33 . Memory (MB): peak = 1546.180 ; gain = 113.309
E

Phase %s%s
101*constraints2
9 2
Depositing RoutesZ18-101
;
/Phase 9 Depositing Routes | Checksum: f1f0fdad
*common
v

%s
*constraints2_
]Time (s): cpu = 00:07:01 ; elapsed = 00:03:42 . Memory (MB): peak = 1546.180 ; gain = 113.309
G

Phase %s%s
101*constraints2
10 2
Post Router TimingZ18-101
o
Post Routing Timing Summary %s
20*route28
6| WNS=0.049  | TNS=0.000  | WHS=0.023  | THS=0.000  |
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
]Time (s): cpu = 00:08:03 ; elapsed = 00:04:06 . Memory (MB): peak = 1546.180 ; gain = 113.309
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
]Time (s): cpu = 00:08:04 ; elapsed = 00:04:06 . Memory (MB): peak = 1546.180 ; gain = 113.309
j
QWebTalk data collection is enabled (User setting is ON. Install Setting is ON.).
118*projectZ1-118
Š
†'%s' has been successfully sent to Xilinx on %s. For additional details about this file, please refer to the Webtalk help file at %s.
186*common2
/home/student/hl955/TaikoGestureMaster/xapp1167_vivado/sw/demo/ipi_proj/project/zynq_base_trd_2013.2.runs/impl_1/usage_statistics_webtalk.xml2
Fri Dec  4 17:35:02 201529
7/opt/xilinx/Vivado/2013.2/doc/webtalk_introduction.htmlZ17-186
v

%s
*constraints2_
]Time (s): cpu = 00:08:05 ; elapsed = 00:04:10 . Memory (MB): peak = 1546.180 ; gain = 113.309
u
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
822
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

00:08:122

00:04:162

1546.1802	
113.684Z17-268
5
Running DRC with %s threads
24*drc2
4Z23-27
í
#The results of DRC are in file %s.
168*coretcl2¬
’/home/student/hl955/TaikoGestureMaster/xapp1167_vivado/sw/demo/ipi_proj/project/zynq_base_trd_2013.2.runs/impl_1/system_top_wrapper_drc_routed.rpt’/home/student/hl955/TaikoGestureMaster/xapp1167_vivado/sw/demo/ipi_proj/project/zynq_base_trd_2013.2.runs/impl_1/system_top_wrapper_drc_routed.rpt8Z2-168
Ÿ
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
report_drc: 2

00:00:252

00:00:102

1546.4302
0.250Z17-268
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
Ì
{ Setting default frequency of %s MHz on the clock %s . Please specify frequency of this clock for accurate power estimate.
164*power2
0.002/
-system_top_i/processing_system7_1/inst/PS_CLKZ33-164
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

00:01:272

1547.0552
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

00:00:342

00:00:222

1617.1802
70.125Z17-268
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

00:00:092

00:00:102

1617.1802
0.000Z17-268
¥
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
write_checkpoint: 2

00:00:182

00:00:192

1617.1802
0.000Z17-268


End Record