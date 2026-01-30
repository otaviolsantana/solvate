#!/bin/bash
#
# GROMACS 2023 profile script.
#

if [ -d $HOME_SOLVATE/suite/gmx ]; then
   export GMXDIR=$HOME_SOLVATE/suite/gmx
   export GMXBIN=$GMXDIR/bin
   export GMXDAT=$GMXDIR/share/gromacs
   export GMXTOP=$GMXDIR/share/gromacs/top
   export GMXMAN=$GMXDIR/share/man
   export GMXLIB=$GMXDIR/lib
   export GMXL64=$GMXDIR/lib64
  #-----------------------------
   export GMXPREFIX=$GMXDIR
   export GMXLIB=$GMXTOP
   export GMXDATA=$GMXDAT
   export GMXLDLIB=$GMXL64 # $GMXLIB
   export GROMACS_DIR=$GMXDIR
   export GMXTOOLCHAINDIR=$GMXDIR/share/cmake
  #-----------------------------
   MANPATH=${MANPATH}" "${GMXMAN}
   LD_LIBRARY_PATH=${LD_LIBRARY_PATH}" "${GMXLDLIB}
   PKG_CONFIG_PATH=${PKG_CONFIG_PATH}" "${GMXLDLIB}/pkgconfig
  #-----------------------------
   export PATH=$PATH:$GMXDIR:$GMXBIN:$GMXDAT:$GMXTOP:$GMXMAN:$GMXLIB:$GMXL64
   export PATH GMXBIN GMXMAN GMXDATA GMXLDLIB MANPATH LD_LIBRARY_PATH PKG_CONFIG_PATH
fi

if [ -f $HOME_SOLVATE/suite/gmx/gmx-completion.bash ]; then
   source $HOME_SOLVATE/suite/gmx/gmx-completion.bash
fi

if [ -f $HOME_SOLVATE/suite/gmx/gmx-completion-gmx_gpu.bash ]; then
   source $HOME_SOLVATE/suite/gmx/gmx-completion-gmx_gpu.bash
fi
