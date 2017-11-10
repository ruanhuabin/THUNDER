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
export CC=${root_dir}/mpich/bin/mpicc
export CXX=${root_dir}/mpich/bin/mpicxx
echo $CC
echo $CXX
mkdir -p build-base
rm -rf build-base/*
cd build-base
cmake -DCMAKE_PREFIX_PATH=${root_dir}/3rd-lib-base ${root_dir}/THUEM-BASE
make -j32

