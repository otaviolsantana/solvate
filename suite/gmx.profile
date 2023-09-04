#!/bin/bash
#
# GROMACS 2024.4 profile script.
#

if [ -d $HOME_SOLVATE/suite/gmx ]; then
   export GMXDIR=$HOME_SOLVATE/suite/gmx && export GMXPREFIX=$HOME_SOLVATE/suite/gmx && export GROMACS_DIR=$HOME_SOLVATE/suite/gmx
   export GMXBIN=$HOME_SOLVATE/suite/gmx/bin
   export GMXMAN=$HOME_SOLVATE/suite/gmx/share/man
   export GMXDATA=$HOME_SOLVATE/suite/gmx/share/gromacs
   export GMXLDLIB=$HOME_SOLVATE/suite/gmx/lib64
   export GMXTOOLCHAINDIR=$HOME_SOLVATE/suite/gmx/share/cmake
   export PATH=$PATH:$GMXDIR:$GMXBIN:$GMXMAN:$GMXDATA:$GMXLDLIB
fi
