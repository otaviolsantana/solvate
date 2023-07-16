#!/bin/bash

# SOLVATE + Definitions

export HOME_SOLVATE=~/.bin/solvate
export HOME_PROGRAM=/opt/chemprogs
export PATH=$PATH:$HOME_SOLVATE:$HOME_SOLVATE/modules:$HOME_SOLVATE/suite

# SOLVATE + Suite Programs

#ource $HOME_SOLVATE/solvate.autocomplete
source $HOME_SOLVATE/suite/g09.profile
#ource $HOME_SOLVATE/suite/g16.profile
source $HOME_SOLVATE/suite/gv5.profile
source $HOME_SOLVATE/suite/orca.profile
source $HOME_SOLVATE/suite/xtb.profile
source $HOME_SOLVATE/suite/gmx.profile
#ource $HOME_SOLVATE/suite/namd.profile
source $HOME_SOLVATE/suite/vmd.profile
source $HOME_SOLVATE/suite/packmol.profile
source $HOME_SOLVATE/suite/qforce.profile

# Some useful aliases

#--------------------------------# #------------------------------#  #-------------------------------------#
#lias   msolv=$(which solvate);    alias microsolv=$(which solvate); alias micro=$HOME_SOLVATE/modules/micro
#--------------------------------# #------------------------------#  #-------------------------------------#
#lias     g09="rung09";            alias gsn="rung09";               alias gau="rung09"
#lias     g16="rung16";            alias gsn="rung16";               alias gau="rung16"
#--------------------------------# #------------------------------#  #-------------------------------------#
#lias    orca="runorca"
#lias     xtb="runxtb"
#lias   crest="runcrest"
#lias     gmx="rungmx"
#lias    namd="runnamd"
#--------------------------------#
#lias     gv5="rungv5"
#lias    jmol="runjmol"
#lias     vmd="runvmd"
#--------------------------------#
#lias packmol="runpackmol"
#lias  qforce="runqforce"
#--------------------------------#
#lias   babel="runbabel"
#--------------------------------#
alias      sv="sview"
#--------------------------------#
alias    info="infos"
alias sysinfo="infos"
alias credits="infov"
#--------------------------------#
alias   clean='rm -rf *~ .*~ *.chk *.d2e *.int *.rwf *.scr Gau-* "#"*'
#--------------------------------#

# Setting stack memory

ulimit -s unlimited
