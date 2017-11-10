#!/bin/bash - 
#===============================================================================
#
#          FILE:  gen.sh
# 
#         USAGE:  ./gen.sh 
# 
#   DESCRIPTION:  
# 
#       OPTIONS:  ---
#  REQUIREMENTS:  ---
#          BUGS:  ---
#         NOTES:  ---
#        AUTHOR: Ruan Huabin <ruanhuabin@gmail.com>
#       COMPANY: Tsinghua University
#       CREATED: 10/30/2017 11:30:29 AM CST
#      REVISION:  ---
#===============================================================================

nx=64
ny=64
nz=96
set -e
set -x
mrcscratch_c -i bak/stack_0001_DW_particles.mrcs -o stack-001.mrcs -x ${nx} -y ${ny} -z ${nz}
mrcscratch_c -i bak/stack_0002_DW_particles.mrcs -o stack-002.mrcs -x ${nx} -y ${ny} -z ${nz}
mrcscratch_c -i bak/stack_0003_DW_particles.mrcs -o stack-003.mrcs -x ${nx} -y ${ny} -z ${nz}
mrcscratch_c -i bak/cylinder.mrc -o ../../input/cylinder.mrc -x ${nx} -y ${ny} -z ${nx} 
