mkdir -p output
rm -rf output/*
rm -rf thunder.log
../mpich/bin/mpirun -n 3 ../build-base/app/thunder para_lxm_full.json
