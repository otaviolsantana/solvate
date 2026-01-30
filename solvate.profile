#!/bin/bash

# SOLVATE Definitions

export HOME_SOLVATE=~/.bin/solvate
export MANPATH=$MANPATH:$HOME_SOLVATE/share/man
export PATH=$PATH:$HOME_SOLVATE:$HOME_SOLVATE/alpha:$HOME_SOLVATE:$HOME_SOLVATE/modules:$HOME_SOLVATE/share:$MANPATH

# SOLVATE + Auto-Complete

source $HOME_SOLVATE/solvate.complete

# SOLVATE + Suite Programs

source $HOME_SOLVATE/suite/gsn.profile
source $HOME_SOLVATE/suite/orca.profile
source $HOME_SOLVATE/suite/cp2k.profile
source $HOME_SOLVATE/suite/xtb.profile
source $HOME_SOLVATE/suite/mopac.profile
source $HOME_SOLVATE/suite/gmx.profile

#ource $HOME_SOLVATE/suite/boss.profile
#ource $HOME_SOLVATE/suite/chimera.profile

source $HOME_SOLVATE/suite/gvw.profile
source $HOME_SOLVATE/suite/vmd.profile

source $HOME_SOLVATE/suite/packmol.profile
source $HOME_SOLVATE/suite/qforce.profile
source $HOME_SOLVATE/suite/travis.profile

source $HOME_SOLVATE/suite/openmpi.profile
source $HOME_SOLVATE/suite/intel.profile

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
alias  update="infou"
#-------------------------# #-------------------------#


# Setting number of threads and stack memory

#export OMP_NUM_THREADS=`lscpu | grep -ia "CPU(s):" | grep -ia -v list | grep -ia -v numa | head -n1 | awk '{print $2}'`

ulimit -s unlimited

# Rebuilding a clean PATHs

CLEAN_PATH()
{
   local IFS=':'          # Split on ':'
   local -a parts=($PATH) # PATH → array
   local -A seen          # Associative array to track duplicates
   local -a unique_parts  # Keeps first occurrence order

   for dir in "${parts[@]}"; do
      [[ -z $dir ]] && continue                # Ignore empty entries
      [[ $dir == "path-to-ORCA" ]] && continue # Ditch the "path-to-ORCA" tag
      if [[ -z ${seen["$dir"]+_} ]]; then
         unique_parts+=("$dir")
         seen["$dir"]=1
      fi
   done

   local CLEAN="${unique_parts[*]}" # Reassemble a tidy PATH
   CLEAN=${CLEAN// /:}              # turn spaces back into ':'

   export PATH=$CLEAN
}

CLEAN_MANPATH()
{
   local IFS=':'             # Split on ':'
   local -a parts=($MANPATH) # MANPATH → array
   local -A seen             # Associative array to track duplicates
   local -a unique_parts     # Keeps first occurrence order

   for dir in "${parts[@]}"; do
      [[ -z $dir ]] && continue                # Ignore empty entries
      [[ $dir == "path-to-ORCA" ]] && continue # Ditch the "path-to-ORCA" tag
      if [[ -z ${seen["$dir"]+_} ]]; then
         unique_parts+=("$dir")
         seen["$dir"]=1
      fi
   done

   local CLEAN="${unique_parts[*]}" # Reassemble a tidy MANPATH
   CLEAN=${CLEAN// /:}              # turn spaces back into ':'

   export MANPATH=$CLEAN
}

CLEAN_PATH
CLEAN_MANPATH
