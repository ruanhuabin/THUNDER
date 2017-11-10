#!/bin/bash - 
#===============================================================================
#
#          FILE:  map_run.sh
# 
#         USAGE:  ./map_run.sh 
# 
#   DESCRIPTION:  
# 
#       OPTIONS:  ---
#  REQUIREMENTS:  ---
#          BUGS:  ---
#         NOTES:  ---
#        AUTHOR: Ruan Huabin <ruanhuabin@gmail.com>
#       COMPANY: Tsinghua University
#       CREATED: 11/01/2017 01:42:48 AM CST
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error
set -x
export LD_LIBRARY_PATH=../mpich/lib/
rm -rf thunder.log
map ../mpich/bin/mpirun -n 3 ../build-base/app/thunder para_lxm_half.json
