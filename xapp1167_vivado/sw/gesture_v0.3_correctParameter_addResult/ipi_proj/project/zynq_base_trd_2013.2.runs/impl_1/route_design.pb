
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
00:00:00.502
00:00:00.252

1403.4772
0.000Z17-268
C
7Phase 1.1 Build Netlist & NodeGraph (MT) | Checksum: 0
*common
u

%s
*constraints2^
\Time (s): cpu = 00:00:58 ; elapsed = 00:00:33 . Memory (MB): peak = 1456.168 ; gain = 52.691
2
&Phase 1 Build RT Design | Checksum: 0
*common
u

%s
*constraints2^
\Time (s): cpu = 00:01:00 ; elapsed = 00:00:35 . Memory (MB): peak = 1456.168 ; gain = 52.691
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
,Phase 2.1 Create Timer | Checksum: 150819fb
*common
u

%s
*constraints2^
\Time (s): cpu = 00:01:02 ; elapsed = 00:00:38 . Memory (MB): peak = 1456.168 ; gain = 52.691
Q
3Estimated Global Vertical Wire Utilization = %s %%
23*route2
7.20Z35-23
T
5Estimated Global Horizontal Wire Utilization = %s %%
22*route2
12.14Z35-22
E

Phase %s%s
101*constraints2
2.2 2
Restore RoutingZ18-101
=
Design has %s routable nets.
92*route2
49504Z35-249
?
#Restored %s nets from the routeDb.
95*route2
0Z35-252
E
)Found %s nets with FIXED_ROUTE property.
94*route2
0Z35-251
;
/Phase 2.2 Restore Routing | Checksum: 150819fb
*common
u

%s
*constraints2^
\Time (s): cpu = 00:01:03 ; elapsed = 00:00:38 . Memory (MB): peak = 1460.199 ; gain = 56.723
I

Phase %s%s
101*constraints2
2.3 2
Special Net RoutingZ18-101
?
3Phase 2.3 Special Net Routing | Checksum: 99469dc9
*common
u

%s
*constraints2^
\Time (s): cpu = 00:01:05 ; elapsed = 00:00:41 . Memory (MB): peak = 1481.980 ; gain = 78.504
M

Phase %s%s
101*constraints2
2.4 2
Local Clock Net RoutingZ18-101
C
7Phase 2.4 Local Clock Net Routing | Checksum: 99469dc9
*common
u

%s
*constraints2^
\Time (s): cpu = 00:01:05 ; elapsed = 00:00:41 . Memory (MB): peak = 1481.980 ; gain = 78.504
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
2Phase 2.5.1.1 Hold Budgeting | Checksum: 99469dc9
*common
u

%s
*constraints2^
\Time (s): cpu = 00:02:01 ; elapsed = 00:01:06 . Memory (MB): peak = 1497.012 ; gain = 93.535
I
=Phase 2.5.1 Update timing with NCN CRPR | Checksum: 99469dc9
*common
u

%s
*constraints2^
\Time (s): cpu = 00:02:01 ; elapsed = 00:01:06 . Memory (MB): peak = 1497.012 ; gain = 93.535
9
-Phase 2.5 Update Timing | Checksum: 99469dc9
*common
u

%s
*constraints2^
\Time (s): cpu = 00:02:01 ; elapsed = 00:01:07 . Memory (MB): peak = 1497.012 ; gain = 93.535
n
Estimated Timing Summary %s
57*route2:
8| WNS=0.323  | TNS=0      | WHS=-0.35  | THS=-1.31e+03|
Z35-57
?

Phase %s%s
101*constraints2
2.6 2
	BudgetingZ18-101
5
)Phase 2.6 Budgeting | Checksum: 99469dc9
*common
v

%s
*constraints2_
]Time (s): cpu = 00:02:39 ; elapsed = 00:01:30 . Memory (MB): peak = 1503.660 ; gain = 100.184
?
3Phase 2 Router Initialization | Checksum: 99469dc9
*common
v

%s
*constraints2_
]Time (s): cpu = 00:02:40 ; elapsed = 00:01:30 . Memory (MB): peak = 1503.660 ; gain = 100.184
C

Phase %s%s
101*constraints2
3 2
Initial RoutingZ18-101
9
-Phase 3 Initial Routing | Checksum: f1295b1e
*common
v

%s
*constraints2_
]Time (s): cpu = 00:03:04 ; elapsed = 00:01:38 . Memory (MB): peak = 1503.660 ; gain = 100.184
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
1Phase 4.1.1 Remove Overlaps | Checksum: 1fa16039
*common
v

%s
*constraints2_
]Time (s): cpu = 00:04:12 ; elapsed = 00:02:09 . Memory (MB): peak = 1503.660 ; gain = 100.184
E

Phase %s%s
101*constraints2
4.1.2 2
Update TimingZ18-101
;
/Phase 4.1.2 Update Timing | Checksum: 1fa16039
*common
v

%s
*constraints2_
]Time (s): cpu = 00:04:29 ; elapsed = 00:02:15 . Memory (MB): peak = 1503.660 ; gain = 100.184
l
Estimated Timing Summary %s
57*route28
6| WNS=0.045  | TNS=0      | WHS=N/A    | THS=N/A    |
Z35-57
L

Phase %s%s
101*constraints2
4.1.3 2
collectNewHoldAndFixZ18-101
B
6Phase 4.1.3 collectNewHoldAndFix | Checksum: 14ead13d
*common
v

%s
*constraints2_
]Time (s): cpu = 00:04:30 ; elapsed = 00:02:16 . Memory (MB): peak = 1503.660 ; gain = 100.184
>
2Phase 4.1 Global Iteration 0 | Checksum: 14ead13d
*common
v

%s
*constraints2_
]Time (s): cpu = 00:04:31 ; elapsed = 00:02:16 . Memory (MB): peak = 1503.660 ; gain = 100.184
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
1Phase 4.2.1 Remove Overlaps | Checksum: 8925bee3
*common
v

%s
*constraints2_
]Time (s): cpu = 00:04:31 ; elapsed = 00:02:17 . Memory (MB): peak = 1503.660 ; gain = 100.184
E

Phase %s%s
101*constraints2
4.2.2 2
Update TimingZ18-101
;
/Phase 4.2.2 Update Timing | Checksum: 8925bee3
*common
v

%s
*constraints2_
]Time (s): cpu = 00:04:32 ; elapsed = 00:02:18 . Memory (MB): peak = 1503.660 ; gain = 100.184
l
Estimated Timing Summary %s
57*route28
6| WNS=0.045  | TNS=0      | WHS=N/A    | THS=N/A    |
Z35-57
L

Phase %s%s
101*constraints2
4.2.3 2
collectNewHoldAndFixZ18-101
B
6Phase 4.2.3 collectNewHoldAndFix | Checksum: 8925bee3
*common
v

%s
*constraints2_
]Time (s): cpu = 00:04:34 ; elapsed = 00:02:19 . Memory (MB): peak = 1503.660 ; gain = 100.184
>
2Phase 4.2 Global Iteration 1 | Checksum: 8925bee3
*common
v

%s
*constraints2_
]Time (s): cpu = 00:04:34 ; elapsed = 00:02:19 . Memory (MB): peak = 1503.660 ; gain = 100.184
<
0Phase 4 Rip-up And Reroute | Checksum: 8925bee3
*common
v

%s
*constraints2_
]Time (s): cpu = 00:04:34 ; elapsed = 00:02:19 . Memory (MB): peak = 1503.660 ; gain = 100.184
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
-Phase 5.1 Update Timing | Checksum: 8925bee3
*common
v

%s
*constraints2_
]Time (s): cpu = 00:04:49 ; elapsed = 00:02:26 . Memory (MB): peak = 1503.660 ; gain = 100.184
l
Estimated Timing Summary %s
57*route28
6| WNS=0.049  | TNS=0      | WHS=N/A    | THS=N/A    |
Z35-57
7
+Phase 5 Delay CleanUp | Checksum: 8925bee3
*common
v

%s
*constraints2_
]Time (s): cpu = 00:04:49 ; elapsed = 00:02:26 . Memory (MB): peak = 1503.660 ; gain = 100.184
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
/Phase 6.1.1 Update Timing | Checksum: 8925bee3
*common
v

%s
*constraints2_
]Time (s): cpu = 00:05:12 ; elapsed = 00:02:35 . Memory (MB): peak = 1503.660 ; gain = 100.184
l
Estimated Timing Summary %s
57*route28
6| WNS=0.049  | TNS=0      | WHS=0.016  | THS=0      |
Z35-57
>
2Phase 6.1 Full Hold Analysis | Checksum: 8925bee3
*common
v

%s
*constraints2_
]Time (s): cpu = 00:05:13 ; elapsed = 00:02:36 . Memory (MB): peak = 1503.660 ; gain = 100.184
7
+Phase 6 Post Hold Fix | Checksum: 8925bee3
*common
v

%s
*constraints2_
]Time (s): cpu = 00:05:13 ; elapsed = 00:02:36 . Memory (MB): peak = 1503.660 ; gain = 100.184
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
-Phase 7.1 Update Timing | Checksum: 8925bee3
*common
v

%s
*constraints2_
]Time (s): cpu = 00:05:35 ; elapsed = 00:02:45 . Memory (MB): peak = 1503.660 ; gain = 100.184
l
Estimated Timing Summary %s
57*route28
6| WNS=0.049  | TNS=0      | WHS=N/A    | THS=N/A    |
Z35-57
=
1Phase 7 Timing Verification | Checksum: 8925bee3
*common
v

%s
*constraints2_
]Time (s): cpu = 00:05:35 ; elapsed = 00:02:45 . Memory (MB): peak = 1503.660 ; gain = 100.184
I

Phase %s%s
101*constraints2
8 2
Verifying routed netsZ18-101
?
3Phase 8 Verifying routed nets | Checksum: 8925bee3
*common
v

%s
*constraints2_
]Time (s): cpu = 00:05:36 ; elapsed = 00:02:45 . Memory (MB): peak = 1503.660 ; gain = 100.184
E

Phase %s%s
101*constraints2
9 2
Depositing RoutesZ18-101
;
/Phase 9 Depositing Routes | Checksum: d8792f88
*common
v

%s
*constraints2_
]Time (s): cpu = 00:05:44 ; elapsed = 00:02:53 . Memory (MB): peak = 1503.660 ; gain = 100.184
G

Phase %s%s
101*constraints2
10 2
Post Router TimingZ18-101
o
Post Routing Timing Summary %s
20*route28
6| WNS=0.051  | TNS=0.000  | WHS=0.016  | THS=0.000  |
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
]Time (s): cpu = 00:06:44 ; elapsed = 00:03:16 . Memory (MB): peak = 1503.660 ; gain = 100.184
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
]Time (s): cpu = 00:06:44 ; elapsed = 00:03:17 . Memory (MB): peak = 1503.660 ; gain = 100.184
j
QWebTalk data collection is enabled (User setting is ON. Install Setting is ON.).
118*projectZ1-118

†'%s' has been successfully sent to Xilinx on %s. For additional details about this file, please refer to the Webtalk help file at %s.
186*common2£
 /home/student/nl443/ece5775/project/TaikoGestureMaster/xapp1167_vivado/sw/gesture/ipi_proj/project/zynq_base_trd_2013.2.runs/impl_1/usage_statistics_webtalk.xml2
Fri Dec  4 18:11:25 201529
7/opt/xilinx/Vivado/2013.2/doc/webtalk_introduction.htmlZ17-186
v

%s
*constraints2_
]Time (s): cpu = 00:06:45 ; elapsed = 00:03:21 . Memory (MB): peak = 1503.660 ; gain = 100.184
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

00:06:522

00:03:262

1503.6602	
100.559Z17-268
5
Running DRC with %s threads
24*drc2
4Z23-27
“
#The results of DRC are in file %s.
168*coretcl2Ò
¥/home/student/nl443/ece5775/project/TaikoGestureMaster/xapp1167_vivado/sw/gesture/ipi_proj/project/zynq_base_trd_2013.2.runs/impl_1/system_top_wrapper_drc_routed.rpt¥/home/student/nl443/ece5775/project/TaikoGestureMaster/xapp1167_vivado/sw/gesture/ipi_proj/project/zynq_base_trd_2013.2.runs/impl_1/system_top_wrapper_drc_routed.rpt8Z2-168
Ÿ
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
report_drc: 2

00:00:242

00:00:102

1503.7852
0.125Z17-268
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

00:02:172

00:01:222

1504.4102
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

00:00:312

00:00:202

1578.5662
74.156Z17-268
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

00:00:092

1578.5662
0.000Z17-268
¥
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
write_checkpoint: 2

00:00:172

00:00:182

1578.5662
0.000Z17-268


End Record