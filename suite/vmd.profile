#!/bin/bash
#
# VMD profile script.
#

if [ -d $HOME_SOLVATE/suite/vmd ]; then
   export PATH=$PATH:$HOME_SOLVATE/suite/vmd
   alias vmd=$HOME_SOLVATE/suite/vmd/vmd
  #alias vmd=$HOME_SOLVATE/suite/vmd/vmd_LINUXAMD64
  #alias vmd=/usr/local/bin/vmd
fi
