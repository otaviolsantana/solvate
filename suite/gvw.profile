#!/bin/bash
#
# GaussView 5 profile script.
#
#    Copyright (c) 1996-2009 Semichem, Inc.
#    All Rights Reserved
#

if [ -d $HOME_SOLVATE/suite/gvw ]; then
   export GV_DIR=$HOME_SOLVATE/suite/gvw
   export PATH=$PATH:$GV_DIR
   export GV_PATH=$GV_DIR/lib:$GV_DIR/lib/MesaGL
   export LIBPATH=$GV_PATH:$LIBPATH
   export LIBRARY_PATH=$GV_PATH:$LIBRARY_PATH
   export SHLIB_PATH=$GV_PATH:$SHLIB_PATH
   export LD_LIBRARY_PATH=$GV_PATH:$LD_LIBRARY_PATH:/usr/lib32
   export LD_LIBRARYN32_PATH=$GV_PATH:$LD_LIBRARYN32_PATH
   export DYLD_LIBRARY_PATH=$GV_PATH:$DYLD_LIBRARY_PATH
   export ALLOWINDIRECT=1
fi
