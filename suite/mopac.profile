#!/bin/bash
#
# MOPAC 23.1.2 profile script.
#

if [ -d $HOME_SOLVATE/suite/mopac ]; then
   export MOPACDIR=$HOME_SOLVATE/suite/mopac
   export MOPACEXE=$HOME_SOLVATE/suite/mopac/bin
   export PATH=$PATH:$MOPACDIR:$MOPACEXE
fi
