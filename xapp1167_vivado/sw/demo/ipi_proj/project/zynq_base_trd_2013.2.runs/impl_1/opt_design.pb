
G
Command: %s
53*	vivadotcl2
opt_design -directive ExploreZ4-113
I
$Directive used for opt_design is: %s67*	vivadotcl2	
ExploreZ4-136
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
S
,Running DRC as a precondition to command %s
22*	vivadotcl2

opt_designZ4-22
7

Starting %s Task
103*constraints2
DRCZ18-103
5
Running DRC with %s threads
24*drc2
4Z23-27
:
DRC finished with %s
272*project2

0 ErrorsZ1-461
[
BPlease refer to the DRC report (report_drc) for more information.
274*projectZ1-462
t

%s
*constraints2]
[Time (s): cpu = 00:00:02 ; elapsed = 00:00:02 . Memory (MB): peak = 1023.855 ; gain = 1.129
F

Starting %s Task
103*constraints2
Logic OptimizationZ18-103
4
(Logic Optimization | Checksum: a74d103d
*common
<
%Done setting XDC timing constraints.
35*timingZ38-35
<

Phase %s%s
101*constraints2
1 2

RetargetZ18-101
3
Pushed %s inverter(s).
98*opt2
114Z31-138
0
Retargeted %s cell(s).
49*opt2
0Z31-49
2
&Phase 1 Retarget | Checksum: 6d8dd9c6
*common
t

%s
*constraints2]
[Time (s): cpu = 00:00:21 ; elapsed = 00:00:18 . Memory (MB): peak = 1029.980 ; gain = 6.125
H

Phase %s%s
101*constraints2
2 2
Constant PropagationZ18-101
1
Pushed %s inverter(s).
98*opt2
3Z31-138
1
Eliminated %s cells.
10*opt2
1865Z31-10
>
2Phase 2 Constant Propagation | Checksum: 53d0ce33
*common
t

%s
*constraints2]
[Time (s): cpu = 00:00:38 ; elapsed = 00:00:35 . Memory (MB): peak = 1029.980 ; gain = 6.125
9

Phase %s%s
101*constraints2
3 2
SweepZ18-101
<
 Eliminated %s unconnected nets.
12*opt2
6161Z31-12
<
!Eliminated %s unconnected cells.
11*opt2
724Z31-11
/
#Phase 3 Sweep | Checksum: f8778eb5
*common
t

%s
*constraints2]
[Time (s): cpu = 00:00:46 ; elapsed = 00:00:43 . Memory (MB): peak = 1029.980 ; gain = 6.125
H

Phase %s%s
101*constraints2
4 2
Constant PropagationZ18-101
1
Pushed %s inverter(s).
98*opt2
0Z31-138
.
Eliminated %s cells.
10*opt2
0Z31-10
>
2Phase 4 Constant Propagation | Checksum: f8778eb5
*common
t

%s
*constraints2]
[Time (s): cpu = 00:00:55 ; elapsed = 00:00:53 . Memory (MB): peak = 1029.980 ; gain = 6.125
9

Phase %s%s
101*constraints2
5 2
SweepZ18-101
9
 Eliminated %s unconnected nets.
12*opt2
0Z31-12
:
!Eliminated %s unconnected cells.
11*opt2
0Z31-11
/
#Phase 5 Sweep | Checksum: 2d143933
*common
t

%s
*constraints2]
[Time (s): cpu = 00:00:59 ; elapsed = 00:00:56 . Memory (MB): peak = 1029.980 ; gain = 6.125
<
%Done setting XDC timing constraints.
35*timingZ38-35
@
4Ending Logic Optimization Task | Checksum: 2d143933
*common
t

%s
*constraints2]
[Time (s): cpu = 00:01:12 ; elapsed = 00:01:08 . Memory (MB): peak = 1032.980 ; gain = 9.125
F

Starting %s Task
103*constraints2
Power OptimizationZ18-103
4
Applying IDT optimizations ...
9*pwroptZ34-9
6
Applying ODC optimizations ...
10*pwroptZ34-10


*pwropt
Ï
©WRITE_MODE attribute of %s BRAM(s) out of a total of %s was updated to NO_CHANGE to save power.
    Run report_power_opt to get a complete listing of the BRAMs updated.
129*pwropt2
152
70Z34-162
I
+Structural ODC has moved %s WE to EN ports
155*pwropt2
0Z34-201
l
CNumber of BRAM Ports augmented: %s newly gated: %s Total Ports: %s
65*pwropt2
92
202
140Z34-65
M
1Number of Flops added for Enable Generation: %s

23*pwropt2
6Z34-23
@
4Ending Power Optimization Task | Checksum: 8d4dd280
*common
v

%s
*constraints2_
]Time (s): cpu = 00:01:02 ; elapsed = 00:00:43 . Memory (MB): peak = 1372.348 ; gain = 339.367
u
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
432
12
02
0Z4-41
A
%s completed successfully
29*	vivadotcl2

opt_designZ4-42
¡
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
opt_design: 2

00:02:162

00:01:532

1372.3482	
349.621Z17-268
4
Writing XDEF routing.
211*designutilsZ20-211
A
#Writing XDEF routing logical nets.
209*designutilsZ20-209
A
#Writing XDEF routing special nets.
210*designutilsZ20-210
®
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Write XDEF Complete: 2
00:00:00.952
00:00:00.972

1372.3482
0.000Z17-268
¥
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
write_checkpoint: 2

00:00:092

00:00:102

1372.3482
0.000Z17-268


End Record