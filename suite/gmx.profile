#!/bin/bash
#
# GROMACS 2021.4 profile script.
#

if [ -d $HOME_SOLVATE/suite/gmx ]; then
   export GMXDIR=$HOME_SOLVATE/suite/gmx
   export GMXBIN=$GMXDIR/bin
   export GMXMAN=$GMXDIR/share/man
  #export GMXLIB=$GMXDIR/share/gromacs/top
   export GMXDATA=$GMXDIR/share/gromacs
   export GMXLDLIB=$GMXDIR/lib64
   export GMXPREFIX=$GMXDIR
   export GROMACS_DIR=$GMXDIR
   export GMXTOOLCHAINDIR=$GMXDIR/share/cmake
   export PATH=$PATH:$GMXDIR:$GMXBIN:$GMXMAN:$GMXDATA:$GMXLDLIB
fi
