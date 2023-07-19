#!/bin/bash
#
# Gaussian 16 profile script.
#
# These commands set up for use of Gaussian 16.  They should be source'd
# into each Gaussian 16 user's .login file, after setting the following
# environment variable:
#
# g16root -- Directory which contains the g16 main directory.  Defaults
#            to users's home directory if not defined before entry.
#
# Top directories for the program:
#

if [ -d $HOME_SOLVATE/suite/g16 ]; then
   GSN=$HOME_SOLVATE/suite/g16
  #-------------------------------------------------------------#
   export GAUSS_EXEDIR="$GSN:$GSN/bsd"
   export GAUSS_LEXEDIR="$GSN/linda-exe"
   export GAUSS_ARCHDIR="$GSN/arch"
   export GAUSS_BSDDIR="$GSN/bsd"
   export G16BASIS="$GSN/basis"
  #-------------------------------------------------------------#
   export LD_LIBRARY_PATH="$LD_LIBRARY_PATH:$GAUSS_EXEDIR"
   export LD_LIBRARY64_PATH="$LD_LIBRARY64_PATH:$GAUSS_EXEDIR"
  #-------------------------------------------------------------#
   export _DSM_BARRIER="SHM"
   export PGI_TERM='trace,abort'
   export PATH="$PATH:$GAUSS_EXEDIR"
  #-------------------------------------------------------------#
   mach="$(gau-machine)"
   if [ "$mach" = "necsx" ] || [ "$mach" = "necsxace" ]; then
   export F_ERROPT1="0,999,1,1,1,1,2,2"
   export F_ERROPT2="270,271,2,1,2,2,2,2"
   export F_ERROPT3="250,253,2,1,2,2,2,2"
   export OMP_NUM_THREADS="1"
   export F_SYSLEN="1024"
   fi
   if [ "$mach" = "ia64" ]; then # The following is to avoid weirdness with Intel's MKL library on IA64:
   export KMP_STACKSIZE="20971520"
   export KMP_AFFINITY="disabled"
   place="`which dplace`"
      if [ "$?" == 0 ] ; then
         export GAUSS_DPLACE="1"
      fi
   fi
   if [ "$mach" = "ibm_rs6k_aix" ]; then
   export XLFRTEOPTS=buffering=disable_preconn
   fi
   if [ "$mach" = "ibm_rs6k_linux" ]; then
   export XLFRTEOPTS=buffering=disable_preconn
   # Fix LD_LIBRARY_PATH so that the Linda workers can start
   # export LD_LIBRARY_PATH="/opt/ibmcmp/lib64:$LD_LIBRARY_PATH"
   fi
  #-------------------------------------------------------------#
   alias sl="$GSN/tests/searchlog.csh"
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
fi
