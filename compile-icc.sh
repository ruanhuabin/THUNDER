#!/bin/bash - 
#===============================================================================
#
#          FILE:  compile.sh
# 
#         USAGE:  ./compile.sh 
# 
#   DESCRIPTION:  
# 
#       OPTIONS:  ---
#  REQUIREMENTS:  ---
#          BUGS:  ---
#         NOTES:  ---
#        AUTHOR: Ruan Huabin <ruanhuabin@gmail.com>
#       COMPANY: Tsinghua University
#       CREATED: 10/27/2017 03:15:19 PM CST
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error
set -e
set -x
root_dir=`pwd`
#export CC=${root_dir}/mpich/bin/mpicc
#export CXX=${root_dir}/mpich/bin/mpicxx
export CC=/opt/intel/bin/mpiicc
export CXX=/opt/intel/bin/mpiicpc
echo $CC
echo $CXX
mkdir -p build-icc
rm -rf build-icc/*
cd build-icc
cmake -DCMAKE_PREFIX_PATH=${root_dir}/3rd-lib-icc/gsl2.4-icc ${root_dir}/THUEM
make -j32

