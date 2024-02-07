#!/bin/bash
#
# ORCA 5.0.4 profile script.
#

if [ -d $HOME_SOLVATE/suite/orca ]; then
   export PATH=$PATH:$HOME_SOLVATE/suite/orca
   export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$HOME_SOLVATE/suite/orca
  #export ORCA_PATH=$HOME_SOLVATE/suite/orca
  #export vhpc_orca_bindir=$HOME_SOLVATE/suite/orca
  #export vhpc_orca_prefix=$HOME_SOLVATE/suite/orca
  #export vhpc_orca_bindir=$HOME_SOLVATE/suite/orca
fi

if [ -d $HOME_SOLVATE/suite/orcanbo ]; then
   export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$HOME_SOLVATE/suite/orcanbo
   export NBOBIN=$HOME_SOLVATE/suite/orcanbo
   export NBOEXE=$NBOBIN/nbo6.exe
   export GENEXE=$NBOBIN/gennbo6.exe
   export PATH=$PATH:$NBOBIN
fi

if [ -d $HOME_SOLVATE/suite/orcampi ]; then
   export MPICH_HOME=$HOME_SOLVATE/suite/orcampi
   export MPICH_BIN=$MPICH_HOME/bin
   export MPICH_INCLUDE=$MPICH_HOME/include
   export MPICH_LIBDIR=$MPICH_HOME/lib
   export MPICH2_DIR=$MPICH_HOME
   export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$MPICH_HOME:$MPICH_BIN:$MPICH_INCLUDE:$MPICH_LIBDIR
   export PATH=$PATH:$MPICH_HOME:$MPICH_BIN:$MPICH_INCLUDE:$MPICH_LIBDIR
fi
