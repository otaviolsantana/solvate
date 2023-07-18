#!/bin/bash
#
# NAMD profile script.
#

if [ -d $HOME_SOLVATE/suite/namd ]; then
   export PATH=$PATH:$HOME_SOLVATE/suite/namd
   alias namd=$HOME_SOLVATE/suite/namd/namd2
fi
