#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/student/hl955/TaikoGestureMaster/xapp1167_vivado/sw/demo/prj/solution1/.autopilot/db/a.g.bc ${1+"$@"}
