#!/bin/bash
#
# Gaussian profile script.
#
# These commands set up for use of Gaussian.  They should be source'd
# into each Gaussian user's .login file, after setting the following
# environment variable:
#
# gXXroot -- Directory which contains the gXX main directory.  Defaults
#            to users's home directory if not defined before entry.
#
# Top directories for the program:
#

if [ -d $HOME_SOLVATE/suite/gsn ]; then
  #-------------------------------------------------------------#
   GSN=$HOME_SOLVATE/suite/gsn
  #-------------------------------------------------------------#
   export GAUSS_EXEDIR="$GSN:$GSN/bsd:$GSN/local:$GSN/extras"
   export GAUSS_LEXEDIR="$GSN/linda-exe"
   export GAUSS_ARCHDIR="$GSN/arch"
   export GAUSS_BSDDIR="$GSN/bsd"
   export G09BASIS="$GSN/basis"
  #-------------------------------------------------------------#
   export LD_LIBRARY_PATH="$LD_LIBRARY_PATH:$GAUSS_EXEDIR"
   export LD_LIBRARY64_PATH="$LD_LIBRARY64_PATH:$GAUSS_EXEDIR"
  #-------------------------------------------------------------#
   export _DSM_BARRIER="SHM"
   export PGI_TERM='trace,abort'
   export PATH="$PATH:$GAUSS_EXEDIR"
  #-------------------------------------------------------------#
   mach="$(gau-machine)"
   if [ "$mach" = "sgi" ]; then
      export _RLD_ARGS="-log /dev/null"
      export TRAP_FPE="OVERFL=ABORT;DIVZERO=ABORT;INT_OVERFL=ABORT"
      export MP_STACK_OVERFLOW="OFF"
   fi
   if [ "$mach" = "ibm_rs6k_linux" ]; then # Fix LD_LIBRARY_PATH so that the Linda workers can start
      export LD_LIBRARY_PATH="/opt/ibmcmp/lib64:$LD_LIBRARY_PATH"
   fi
   if [ "$mach" = "ia64" ]; then # The following is to avoid weirdness with Intel's MKL library on IA64:
      export KMP_STACKSIZE="20971520"
      export KMP_AFFINITY="disabled"
      place="`which dplace`"
      if [ "$?" == 0 ] ; then
        export GAUSS_DPLACE="1"
      fi
   fi
  #-------------------------------------------------------------#
   ulimit -c 0
   ulimit -d hard
   ulimit -f hard
   ulimit -l hard
   ulimit -m hard
   ulimit -n hard
   ulimit -s hard
   ulimit -t hard
   ulimit -u hard
  #-------------------------------------------------------------#
fi
