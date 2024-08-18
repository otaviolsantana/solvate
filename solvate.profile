#!/bin/bash

# SOLVATE Definitions

export HOME_SOLVATE=~/.bin/solvate
export PATH=$PATH:$HOME_SOLVATE:$HOME_SOLVATE/modules:$HOME_SOLVATE/share

# SOLVATE + Suite Programs

source $HOME_SOLVATE/suite/orca.profile
source $HOME_SOLVATE/suite/gsn.profile
source $HOME_SOLVATE/suite/xtb.profile
source $HOME_SOLVATE/suite/gmx.profile

source $HOME_SOLVATE/suite/gvw.profile
source $HOME_SOLVATE/suite/vmd.profile

source $HOME_SOLVATE/suite/packmol.profile
source $HOME_SOLVATE/suite/qforce.profile

source $HOME_SOLVATE/suite/openmpi.profile
source $HOME_SOLVATE/suite/intel.profile

# Some useful aliases

#--------------------------------# #------------------------------#  #-------------------------------------#
alias   msolv=$(which solvate);    alias microsolv=$(which solvate); alias micro=$HOME_SOLVATE/modules/micro
#--------------------------------# #------------------------------#  #-------------------------------------#
#lias     g09="rungsn" ;           alias gsn="rungsn" ;              alias gau="rungsn"
#lias    orca="runorca"
#lias     xtb="runxtb"
#lias   crest="runcrest"
#lias     gmx="rungmx"
#--------------------------------# #------------------------------#  #-------------------------------------#
#lias     gv5="rungvw" ;           alias gvw="rungvw" ;              alias gv="rungvw"
#lias    jmol="runjmol"
#lias     vmd="runvmd"
#--------------------------------# #------------------------------#  #-------------------------------------#
#lias packmol="runpackmol"
#lias  qforce="runqforce"
#lias  cforce="runcforce" ;        alias  ffield="runcforce"
#--------------------------------# #------------------------------#  #-------------------------------------#
#lias   babel="runbabel"
#--------------------------------#
alias   optim="oniom"
alias      sv="sview"
#--------------------------------#
alias    info="infos"
alias sysinfo="infos"
alias credits="infov"
alias  update="infou"
#--------------------------------#

# Setting number of threads and stack memory

#export OMP_NUM_THREADS=`lscpu | grep -ia "CPU(s):" | grep -ia -v list | grep -ia -v numa | head -n1 | awk '{print $2}'`

ulimit -s unlimited
