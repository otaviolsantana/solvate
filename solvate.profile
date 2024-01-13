#!/bin/bash

# SOLVATE Definitions

export HOME_SOLVATE=~/.bin/solvate
export PATH=$PATH:$HOME_SOLVATE:$HOME_SOLVATE/modules

# SOLVATE + Suite Programs

source $HOME_SOLVATE/suite/gsn.profile
source $HOME_SOLVATE/suite/orca.profile
source $HOME_SOLVATE/suite/xtb.profile
source $HOME_SOLVATE/suite/gmx.profile

source $HOME_SOLVATE/suite/gvw.profile
source $HOME_SOLVATE/suite/vmd.profile

source $HOME_SOLVATE/suite/packmol.profile
source $HOME_SOLVATE/suite/qforce.profile

# Some useful aliases

#--------------------------------# #------------------------------#  #-------------------------------------#
alias   msolv=$(which solvate);    alias microsolv=$(which solvate); alias micro=$HOME_SOLVATE/modules/micro
#--------------------------------# #------------------------------#  #-------------------------------------#
alias     g09="rungsn" ;           alias gsn="rungsn" ;              alias gau="rungsn"
alias    orca="runorca"
alias     xtb="runxtb"
alias   crest="runcrest"
alias     gmx="rungmx"
#--------------------------------# #------------------------------#  #-------------------------------------#
alias     gv5="rungvw" ;           alias gvw="rungvw" ;              alias gv="rungvw"
alias    jmol="runjmol"
alias     vmd="runvmd"
#--------------------------------# #------------------------------#  #-------------------------------------#
alias packmol="runpackmol"
alias  qforce="runqforce"
alias  cforce="runcforce" ;        alias  ffield="runcforce"
#--------------------------------# #------------------------------#  #-------------------------------------#
alias   babel="runbabel"
#--------------------------------#
alias      sv="sview"
#--------------------------------#
alias    info="infos"
alias sysinfo="infos"
alias credits="infov"
#--------------------------------#

# Setting number of threads and stack memory

export OMP_NUM_THREADS=`lscpu | grep -ia "CPU(s):" | grep -ia -v list | grep -ia -v numa | head -n1 | awk '{print $2}'`

ulimit -s unlimited
