#!/bin/bash
#
# VMD profile script.
#

if [ -d $HOME_SOLVATE/suite/vmd ]; then
  export PATH=$PATH:$HOME_SOLVATE/suite/vmd
 #export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/lib/vmd
 #alias vmd=$HOME_SOLVATE/suite/vmd/vmd
 #alias vmd=/usr/local/bin/vmd
fi
