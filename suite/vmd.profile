#!/bin/bash
#
# VMD profile script.
#

if [ -d $HOME_SOLVATE/suite/vmd ]; then
  export PATH=$PATH:$HOME_SOLVATE/suite/vmd:$HOME_SOLVATE/suite/vmd/bin
  export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$HOME_SOLVATE/suite/vmd/lib/vmd
fi
