#!/bin/bash
#
# xTB 6.5.0 profile script.
#

if [ -d $HOME_SOLVATE/suite/xtb ]; then
   xtbhome=$HOME_SOLVATE/suite/xtb
   XTBHOME=$HOME_SOLVATE/suite/xtb
   BINHOME=$XTBHOME/bin
   LIBHOME=$XTBHOME/lib
   SHRHOME=$XTBHOME/share
   MANPATH=$XTBHOME/man
   PYTHONPATH=$XTBHOME/python
   XTBPATH=$HOME:$XTBHOME:$BINHOME:$SHRHOME:$MANPATH
   PKG_CONFIG_PATH=${PKG_CONFIG_PATH}:${XTBHOME}/share

   export PATH=$PATH:$XTBHOME:$BINHOME:$SHRHOME:$MANPATH

   export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$LIBHOME

   ulimit -s unlimited
fi
