
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
00:00:00.692
00:00:00.352

1423.0002
0.000Z17-268
C
7Phase 1.1 Build Netlist & NodeGraph (MT) | Checksum: 0
*common
u

%s
*constraints2^
\Time (s): cpu = 00:00:59 ; elapsed = 00:00:33 . Memory (MB): peak = 1482.262 ; gain = 59.262
2
&Phase 1 Build RT Design | Checksum: 0
*common
u

%s
*constraints2^
\Time (s): cpu = 00:01:02 ; elapsed = 00:00:36 . Memory (MB): peak = 1482.262 ; gain = 59.262
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
,Phase 2.1 Create Timer | Checksum: 8706e2f4
*common
u

%s
*constraints2^
\Time (s): cpu = 00:01:04 ; elapsed = 00:00:38 . Memory (MB): peak = 1482.262 ; gain = 59.262
Q
3Estimated Global Vertical Wire Utilization = %s %%
23*route2
7.36Z35-23
T
5Estimated Global Horizontal Wire Utilization = %s %%
22*route2
11.90Z35-22
E

Phase %s%s
101*constraints2
2.2 2
Restore RoutingZ18-101
=
Design has %s routable nets.
92*route2
52440Z35-249
?
#Restored %s nets from the routeDb.
95*route2
0Z35-252
E
)Found %s nets with FIXED_ROUTE property.
94*route2
0Z35-251
;
/Phase 2.2 Restore Routing | Checksum: 8706e2f4
*common
u

%s
*constraints2^
\Time (s): cpu = 00:01:05 ; elapsed = 00:00:38 . Memory (MB): peak = 1486.293 ; gain = 63.293
I

Phase %s%s
101*constraints2
2.3 2
Special Net RoutingZ18-101
?
3Phase 2.3 Special Net Routing | Checksum: 4a2eebf7
*common
u

%s
*constraints2^
\Time (s): cpu = 00:01:07 ; elapsed = 00:00:41 . Memory (MB): peak = 1507.074 ; gain = 84.074
M

Phase %s%s
101*constraints2
2.4 2
Local Clock Net RoutingZ18-101
C
7Phase 2.4 Local Clock Net Routing | Checksum: 4a2eebf7
*common
u

%s
*constraints2^
\Time (s): cpu = 00:01:08 ; elapsed = 00:00:41 . Memory (MB): peak = 1507.074 ; gain = 84.074
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
2Phase 2.5.1.1 Hold Budgeting | Checksum: 4a2eebf7
*common
v

%s
*constraints2_
]Time (s): cpu = 00:02:08 ; elapsed = 00:01:09 . Memory (MB): peak = 1527.238 ; gain = 104.238
I
=Phase 2.5.1 Update timing with NCN CRPR | Checksum: 4a2eebf7
*common
v

%s
*constraints2_
]Time (s): cpu = 00:02:08 ; elapsed = 00:01:09 . Memory (MB): peak = 1527.238 ; gain = 104.238
9
-Phase 2.5 Update Timing | Checksum: 4a2eebf7
*common
v

%s
*constraints2_
]Time (s): cpu = 00:02:08 ; elapsed = 00:01:09 . Memory (MB): peak = 1527.238 ; gain = 104.238
n
Estimated Timing Summary %s
57*route2:
8| WNS=0.367  | TNS=0      | WHS=-0.398 | THS=-1.37e+03|
Z35-57
?

Phase %s%s
101*constraints2
2.6 2
	BudgetingZ18-101
5
)Phase 2.6 Budgeting | Checksum: 4a2eebf7
*common
v

%s
*constraints2_
]Time (s): cpu = 00:02:49 ; elapsed = 00:01:34 . Memory (MB): peak = 1531.238 ; gain = 108.238
?
3Phase 2 Router Initialization | Checksum: 4a2eebf7
*common
v

%s
*constraints2_
]Time (s): cpu = 00:02:49 ; elapsed = 00:01:35 . Memory (MB): peak = 1531.238 ; gain = 108.238
C

Phase %s%s
101*constraints2
3 2
Initial RoutingZ18-101
9
-Phase 3 Initial Routing | Checksum: 4ede59c9
*common
v

%s
*constraints2_
]Time (s): cpu = 00:03:14 ; elapsed = 00:01:43 . Memory (MB): peak = 1531.238 ; gain = 108.238
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
1Phase 4.1.1 Remove Overlaps | Checksum: c2066614
*common
v

%s
*constraints2_
]Time (s): cpu = 00:04:21 ; elapsed = 00:02:12 . Memory (MB): peak = 1531.238 ; gain = 108.238
E

Phase %s%s
101*constraints2
4.1.2 2
Update TimingZ18-101
;
/Phase 4.1.2 Update Timing | Checksum: c2066614
*common
v

%s
*constraints2_
]Time (s): cpu = 00:04:39 ; elapsed = 00:02:19 . Memory (MB): peak = 1531.238 ; gain = 108.238
l
Estimated Timing Summary %s
57*route28
6| WNS=0.078  | TNS=0      | WHS=N/A    | THS=N/A    |
Z35-57
L

Phase %s%s
101*constraints2
4.1.3 2
collectNewHoldAndFixZ18-101
B
6Phase 4.1.3 collectNewHoldAndFix | Checksum: 069b9ab5
*common
v

%s
*constraints2_
]Time (s): cpu = 00:04:40 ; elapsed = 00:02:20 . Memory (MB): peak = 1531.238 ; gain = 108.238
>
2Phase 4.1 Global Iteration 0 | Checksum: 069b9ab5
*common
v

%s
*constraints2_
]Time (s): cpu = 00:04:40 ; elapsed = 00:02:20 . Memory (MB): peak = 1531.238 ; gain = 108.238
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
1Phase 4.2.1 Remove Overlaps | Checksum: cfa67cb3
*common
v

%s
*constraints2_
]Time (s): cpu = 00:04:42 ; elapsed = 00:02:21 . Memory (MB): peak = 1531.238 ; gain = 108.238
E

Phase %s%s
101*constraints2
4.2.2 2
Update TimingZ18-101
;
/Phase 4.2.2 Update Timing | Checksum: cfa67cb3
*common
v

%s
*constraints2_
]Time (s): cpu = 00:04:43 ; elapsed = 00:02:22 . Memory (MB): peak = 1531.238 ; gain = 108.238
l
Estimated Timing Summary %s
57*route28
6| WNS=0.078  | TNS=0      | WHS=N/A    | THS=N/A    |
Z35-57
L

Phase %s%s
101*constraints2
4.2.3 2
collectNewHoldAndFixZ18-101
B
6Phase 4.2.3 collectNewHoldAndFix | Checksum: a9abfa61
*common
v

%s
*constraints2_
]Time (s): cpu = 00:04:44 ; elapsed = 00:02:23 . Memory (MB): peak = 1531.238 ; gain = 108.238
>
2Phase 4.2 Global Iteration 1 | Checksum: a9abfa61
*common
v

%s
*constraints2_
]Time (s): cpu = 00:04:44 ; elapsed = 00:02:23 . Memory (MB): peak = 1531.238 ; gain = 108.238
<
0Phase 4 Rip-up And Reroute | Checksum: a9abfa61
*common
v

%s
*constraints2_
]Time (s): cpu = 00:04:44 ; elapsed = 00:02:23 . Memory (MB): peak = 1531.238 ; gain = 108.238
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
-Phase 5.1 Update Timing | Checksum: a9abfa61
*common
v

%s
*constraints2_
]Time (s): cpu = 00:05:00 ; elapsed = 00:02:30 . Memory (MB): peak = 1531.238 ; gain = 108.238
l
Estimated Timing Summary %s
57*route28
6| WNS=0.109  | TNS=0      | WHS=N/A    | THS=N/A    |
Z35-57
7
+Phase 5 Delay CleanUp | Checksum: a9abfa61
*common
v

%s
*constraints2_
]Time (s): cpu = 00:05:00 ; elapsed = 00:02:30 . Memory (MB): peak = 1531.238 ; gain = 108.238
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
/Phase 6.1.1 Update Timing | Checksum: a9abfa61
*common
v

%s
*constraints2_
]Time (s): cpu = 00:05:24 ; elapsed = 00:02:40 . Memory (MB): peak = 1531.238 ; gain = 108.238
l
Estimated Timing Summary %s
57*route28
6| WNS=0.109  | TNS=0      | WHS=0.019  | THS=0      |
Z35-57
>
2Phase 6.1 Full Hold Analysis | Checksum: a9abfa61
*common
v

%s
*constraints2_
]Time (s): cpu = 00:05:24 ; elapsed = 00:02:40 . Memory (MB): peak = 1531.238 ; gain = 108.238
7
+Phase 6 Post Hold Fix | Checksum: a9abfa61
*common
v

%s
*constraints2_
]Time (s): cpu = 00:05:24 ; elapsed = 00:02:40 . Memory (MB): peak = 1531.238 ; gain = 108.238
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
-Phase 7.1 Update Timing | Checksum: a9abfa61
*common
v

%s
*constraints2_
]Time (s): cpu = 00:05:47 ; elapsed = 00:02:50 . Memory (MB): peak = 1531.238 ; gain = 108.238
l
Estimated Timing Summary %s
57*route28
6| WNS=0.109  | TNS=0      | WHS=N/A    | THS=N/A    |
Z35-57
=
1Phase 7 Timing Verification | Checksum: a9abfa61
*common
v

%s
*constraints2_
]Time (s): cpu = 00:05:48 ; elapsed = 00:02:50 . Memory (MB): peak = 1531.238 ; gain = 108.238
I

Phase %s%s
101*constraints2
8 2
Verifying routed netsZ18-101
?
3Phase 8 Verifying routed nets | Checksum: a9abfa61
*common
v

%s
*constraints2_
]Time (s): cpu = 00:05:48 ; elapsed = 00:02:50 . Memory (MB): peak = 1531.238 ; gain = 108.238
E

Phase %s%s
101*constraints2
9 2
Depositing RoutesZ18-101
;
/Phase 9 Depositing Routes | Checksum: 995381ff
*common
v

%s
*constraints2_
]Time (s): cpu = 00:05:57 ; elapsed = 00:02:59 . Memory (MB): peak = 1531.238 ; gain = 108.238
G

Phase %s%s
101*constraints2
10 2
Post Router TimingZ18-101
o
Post Routing Timing Summary %s
20*route28
6| WNS=0.110  | TNS=0.000  | WHS=0.020  | THS=0.000  |
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
]Time (s): cpu = 00:06:57 ; elapsed = 00:03:22 . Memory (MB): peak = 1531.238 ; gain = 108.238
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
]Time (s): cpu = 00:06:58 ; elapsed = 00:03:23 . Memory (MB): peak = 1531.238 ; gain = 108.238
j
QWebTalk data collection is enabled (User setting is ON. Install Setting is ON.).
118*projectZ1-118
¬
†'%s' has been successfully sent to Xilinx on %s. For additional details about this file, please refer to the Webtalk help file at %s.
186*common2²
¯/home/student/nl443/ece5775/project/TaikoGestureMaster/xapp1167_vivado/sw/gesture_v0.2_addResult/ipi_proj/project/zynq_base_trd_2013.2.runs/impl_1/usage_statistics_webtalk.xml2
Mon Dec  7 18:53:56 201529
7/opt/xilinx/Vivado/2013.2/doc/webtalk_introduction.htmlZ17-186
v

%s
*constraints2_
]Time (s): cpu = 00:06:58 ; elapsed = 00:03:27 . Memory (MB): peak = 1531.238 ; gain = 108.238
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

00:07:052

00:03:322

1531.2382	
108.613Z17-268
5
Running DRC with %s threads
24*drc2
4Z23-27
±
#The results of DRC are in file %s.
168*coretcl2ð
´/home/student/nl443/ece5775/project/TaikoGestureMaster/xapp1167_vivado/sw/gesture_v0.2_addResult/ipi_proj/project/zynq_base_trd_2013.2.runs/impl_1/system_top_wrapper_drc_routed.rpt´/home/student/nl443/ece5775/project/TaikoGestureMaster/xapp1167_vivado/sw/gesture_v0.2_addResult/ipi_proj/project/zynq_base_trd_2013.2.runs/impl_1/system_top_wrapper_drc_routed.rpt8Z2-168
Ÿ
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
report_drc: 2

00:00:262

00:00:102

1531.3632
0.125Z17-268
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

00:02:232

00:01:262

1532.1132
0.750Z17-268
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

1618.6802
85.031Z17-268
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

1618.6802
0.000Z17-268
¥
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
write_checkpoint: 2

00:00:182

00:00:192

1618.6802
0.000Z17-268


End Record