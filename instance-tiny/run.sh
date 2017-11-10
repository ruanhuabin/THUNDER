mkdir -p output
rm -rf output/*
../mpich/bin/mpirun -n 3 ../build-base/app/thunder para.json
