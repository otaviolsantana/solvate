#!/bin/bash

# SOLVATE Definition

export HOME_SOLVATE="${HOME_SOLVATE:-$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)}"; HOME_SOLVATE="${HOME_SOLVATE%/}"

# Updating PATH variables

case ":${PATH}:" in
   *":${HOME_SOLVATE}:"*) ;;
   *) export PATH=$PATH:$HOME_SOLVATE:$HOME_SOLVATE/alpha:$HOME_SOLVATE/modules:$HOME_SOLVATE/share:$HOME_SOLVATE/suite:$MANPATH ;;
esac

case ":${MANPATH}:" in
   *":${HOME_SOLVATE}:"*) ;;
   *) export MANPATH=$MANPATH:$HOME_SOLVATE/share/man ;;
esac

# SOLVATE + Auto-Complete

source $HOME_SOLVATE/solvate.complete

# SOLVATE + TkMol Suite

source $HOME_SOLVATE/solvate.tkmol

# SOLVATE + External Programs

source $HOME_SOLVATE/suite/gsn.profile
source $HOME_SOLVATE/suite/orca.profile
source $HOME_SOLVATE/suite/cp2k.profile
source $HOME_SOLVATE/suite/xtb.profile
source $HOME_SOLVATE/suite/mopac.profile
source $HOME_SOLVATE/suite/gmx.profile

source $HOME_SOLVATE/suite/gvw.profile
source $HOME_SOLVATE/suite/vmd.profile

source $HOME_SOLVATE/suite/babel.profile
source $HOME_SOLVATE/suite/packmol.profile
source $HOME_SOLVATE/suite/qforce.profile
source $HOME_SOLVATE/suite/openmpi.profile

#ource $HOME_SOLVATE/suite/boss.profile
#ource $HOME_SOLVATE/suite/chimera.profile
#ource $HOME_SOLVATE/suite/travis.profile
#ource $HOME_SOLVATE/suite/intel.profile

# Setting stack memory

ulimit -s unlimited

# Setting number of threads

#export OMP_NUM_THREADS=`lscpu | grep -ia "CPU(s):" | grep -ia -v list | grep -ia -v numa | head -n1 | awk '{print $2}'`

# Rebuilding a clean PATH

#$HOME_SOLVATE/solvate.clean
