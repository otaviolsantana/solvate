#!/bin/bash
#
# BOSS 5.1 profile script.
#

if [ -d $HOME_SOLVATE/suite/boss ]; then
   export BOSSdir=$HOME_SOLVATE/suite/boss
   export PATH=$PATH:$BOSSdir
fi
