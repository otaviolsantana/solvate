#!/bin/bash
#
# VMD profile script.
#

if [ -d $HOME_SOLVATE/suite/vmd ]; then
  export PATH=$PATH:$HOME_SOLVATE/suite/vmd:$HOME_SOLVATE/suite/vmd/bin
  export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$HOME_SOLVATE/suite/vmd/lib/vmd
fi

################################################################
##                                                            ##
## 1. To install VMD:                                         ##
##                                                            ##
##    sudo ./configure                                        ##
##    cd src/                                                 ##
##    sudo make install                                       ##
##                                                            ##
## 2. To solve the problem of the transparent background,     ##
##    comment on this:                                        ##
##                                                            ##
##   #if [ -z "${LD_LIBRARY_PATH}" ]; then                    ##
##   #   LD_LIBRARY_PATH="${MASTERVMDDIR}"                    ##
##   #else                                                    ##
##   #   LD_LIBRARY_PATH="${MASTERVMDDIR}:${LD_LIBRARY_PATH}" ##
##   #fi                                                      ##
##                                                            ##
##    and use this configuration:                             ##
##                                                            ##
##    LD_LIBRARY_PATH=diretório_do_vmd/lib/vmd                ##
##                                                            ##
################################################################
