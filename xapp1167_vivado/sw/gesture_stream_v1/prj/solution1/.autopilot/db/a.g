#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/student/nl443/ece5775/project/TaikoGestureMaster/xapp1167_vivado/sw/gesture_stream_v1/prj/solution1/.autopilot/db/a.g.bc ${1+"$@"}