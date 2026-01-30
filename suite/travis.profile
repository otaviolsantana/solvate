#!/bin/bash
#
# Travis 1.0 profile script.
#

if [ -d $HOME_SOLVATE/suite/travis ]; then
   export PATH=$PATH:$HOME_SOLVATE/suite/travis
fi
