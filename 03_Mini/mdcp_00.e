##Balancing Box Density (water) for 1 ns (only the protein is rigid)

mpirun -np 8 $AMBERHOME/bin/pmemd.MPI -O -i mdcp_00.in \
 -p ../01_LEAP/1ENY_Tetramero.top \
 -c ../01_LEAP/1ENY_Tetramero.crd \
 -o mdcp_00.out \
 -x mdcp_00.crd \
 -r mdcp_00.cav \
-ref ../01_LEAP/1ENY_Tetramero.crd #mesma coisa q o -c

