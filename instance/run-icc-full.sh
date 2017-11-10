mkdir -p output
rm -rf output/*
rm -rf thunder.log
/opt/intel/bin/mpirun -n 3 ../build-icc/app/thunder para_lxm_full.json
