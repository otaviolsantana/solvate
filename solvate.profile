#!/bin/bash

# SOLVATE Definitions

export HOME_SOLVATE=/home/otavio/.bin/solvate
export MANPATH=$MANPATH:$HOME_SOLVATE/share/man
export PATH=$PATH:$HOME_SOLVATE:$HOME_SOLVATE/alpha:$HOME_SOLVATE/modules:$HOME_SOLVATE/share:$HOME_SOLVATE/suite:$MANPATH

# SOLVATE + Auto-Complete

source $HOME_SOLVATE/solvate.complete

# SOLVATE + Suite Programs

source $HOME_SOLVATE/suite/gsn.profile
source $HOME_SOLVATE/suite/orca.profile
source $HOME_SOLVATE/suite/cp2k.profile
source $HOME_SOLVATE/suite/xtb.profile
source $HOME_SOLVATE/suite/mopac.profile
source $HOME_SOLVATE/suite/gmx.profile

source $HOME_SOLVATE/suite/gvw.profile
source $HOME_SOLVATE/suite/vmd.profile

source $HOME_SOLVATE/suite/packmol.profile
source $HOME_SOLVATE/suite/qforce.profile
source $HOME_SOLVATE/suite/openmpi.profile

#ource $HOME_SOLVATE/suite/boss.profile
#ource $HOME_SOLVATE/suite/chimera.profile
#ource $HOME_SOLVATE/suite/travis.profile
#ource $HOME_SOLVATE/suite/intel.profile

# Some useful aliases

#-------------------------# #-------------------------#
alias     gsn="rungsn"     ; alias g09="rungsn"
alias    orca="runorca"
alias    cp2k="runcp2k"
alias     xtb="runxtb"
alias   crest="runcrest"
alias   mopac="runmopac"
alias     gmx="rungmx"
#-------------------------# #-------------------------#
alias     gvw="rungvw"     ; alias gv5="rungvw"
alias    jmol="runjmol"
alias     vmd="runvmd"
alias     svw="sview"      ; alias sv="sview"
#-------------------------# #-------------------------#
alias  packml="runpackmol" ; alias packmol="runpackmol"
alias  qforce="runqforce"
alias  cforce="runcforce"  ; alias ffield="runcforce"
alias     lpg="runlpg"     ; alias ligpargen="runlpg"
#-------------------------# #-------------------------#
alias   babel="runbabel"
#-------------------------# #-------------------------#
alias sysinfo="infos"      ; alias info="infos"
alias credits="infov"
alias updates="infou"
#-------------------------# #-------------------------#
alias  update="solvate.update"
alias  config="solvate.config -auto"
#-------------------------# #-------------------------#


# Setting number of threads and stack memory

#export OMP_NUM_THREADS=`lscpu | grep -ia "CPU(s):" | grep -ia -v list | grep -ia -v numa | head -n1 | awk '{print $2}'`

ulimit -s unlimited

# Rebuilding a clean PATHs

$HOME_SOLVATE/solvate.clean
