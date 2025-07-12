#!/bin/bash
#
# OpenMPI 5.0.1 profile script.
#

if [ -d $HOME_SOLVATE/suite/openmpi ]; then
   export OPENMPI_HOME=$HOME_SOLVATE/suite/openmpi
   export MPI_BIN=$OPENMPI_HOME/bin
   export MPI_LIB=$OPENMPI_HOME/lib
   export MPI_L64=$OPENMPI_HOME/lib64
   export MPI_SHR=$OPENMPI_HOME/share
   export PATH=$PATH:$OPENMPI_HOME:$MPI_BIN:$MPI_LIB:$MPI_L64:$MPI_SHR
   export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$MPI_LIB:$MPI_L64
   export MANPATH=$MANPATH:$MPI_SHR
fi
