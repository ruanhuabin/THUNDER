#!/bin/bash

#PBS -N THUNDER3D
#PBS -o thunder3d.o
#PBS -e thunder3d.e
#PBS -q CPUNODES
#PBS -l nodes=8:ppn=28


# Thread Level Parallel Setting
export OMP_NUM_THREADS=12

echo "Worker dir is $PBS_O_WORKDIR"
#cd $PBS_O_WORKDIR


#awk '{print $1":1" }' $PBS_NODEFILE > qsub_hostfile.txt


# Run the Program
#mpiexec.hydra  -f qsub_hostfile.txt  -n 9 thunder para.json
mpirun -n 4 thunder para.json





