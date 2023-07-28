#!/bin/bash

# SOLVATE + Definitions

export HOME_SOLVATE=~/.bin/solvate
export HOME_PROGRAM=/opt/chemprogs
export PATH=$PATH:$HOME_SOLVATE:$HOME_SOLVATE/modules:$HOME_SOLVATE/suite

# SOLVATE + Suite Programs

#ource $HOME_SOLVATE/solvate.autocomplete
source $HOME_SOLVATE/suite/gsn.profile
source $HOME_SOLVATE/suite/gvw.profile
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
#lias     g09="rungsn";            alias gsn="rungsn";               alias gau="rungsn"
#lias     gv5="rungvw";            alias gvw="rungvw";               alias gv="rungvw"
#--------------------------------# #------------------------------#  #-------------------------------------#
#lias    orca="runorca"
#lias     xtb="runxtb"
#lias   crest="runcrest"
#lias     gmx="rungmx"
#lias    namd="runnamd"
#--------------------------------# #------------------------------#  #-------------------------------------#
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
