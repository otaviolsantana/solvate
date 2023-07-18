#!/bin/bash
#
# GROMACS 2020.1 profile script.
#

if [ -d $HOME_SOLVATE/suite/gmx ]; then
   export GMXDIR=$HOME_SOLVATE/suite/gmx
   export PATH=$PATH:$GMXDIR
fi

# Cluster: gromacs/2021.3-gcc-8.3.0
