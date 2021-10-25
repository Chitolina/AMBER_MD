##Prod 

export CUDA_VISIBLE_DEVICES="1"

## Production from 10.0 ns to 20.0 ns. NetCDF (.ncf) for restart and trajectory files.
$AMBERHOME/bin/pmemd.cuda -O -i mdcp_010ns_100ns.in \
 -p ../01_LEAP/1ENY_Tetramero.top \
 -c mdcp_07.cav \
 -o mdcp_010ns-020ns.out \
 -r mdcp_010ns-020ns.cav \
 -x mdcp_010ns-020ns.ncf

## Production from 20.0 ns to 30.0 ns. NetCDF (.ncf) for restart and trajectory files.
$AMBERHOME/bin/pmemd.cuda -O -i mdcp_010ns_100ns.in \
 -p ../01_LEAP/1ENY_Tetramero.top \
 -c mdcp_010ns-020ns.cav \
 -o mdcp_020ns-030ns.out \
 -r mdcp_020ns-030ns.cav \
 -x mdcp_020ns-030ns.ncf

## Production from 30.0 ns to 40.0 ns. NetCDF (.ncf) for restart and trajectory files.
$AMBERHOME/bin/pmemd.cuda -O -i mdcp_010ns_100ns.in \
 -p ../01_LEAP/1ENY_Tetramero.top \
 -c mdcp_020ns-030ns.cav \
 -o mdcp_030ns-040ns.out \
 -r mdcp_030ns-040ns.cav \
 -x mdcp_030ns-040ns.ncf

## Production from 40.0 ns to 50.0 ns. NetCDF (.ncf) for restart and trajectory files.
$AMBERHOME/bin/pmemd.cuda -O -i mdcp_010ns_100ns.in \
 -p ../01_LEAP/1ENY_Tetramero.top \
 -c mdcp_030ns-040ns.cav \
 -o mdcp_040ns-050ns.out \
 -r mdcp_040ns-050ns.cav \
 -x mdcp_040ns-050ns.ncf

## Production from 50.0 ns to 60.0 ns. NetCDF (.ncf) for restart and trajectory files.
$AMBERHOME/bin/pmemd.cuda -O -i mdcp_010ns_100ns.in \
 -p ../01_LEAP/1ENY_Tetramero.top \
 -c mdcp_040ns-050ns.cav \
 -o mdcp_050ns-060ns.out \
 -r mdcp_050ns-060ns.cav \
 -x mdcp_050ns-060ns.ncf

## Production from 60.0 ns to 70.0 ns. NetCDF (.ncf) for restart and trajectory files.
$AMBERHOME/bin/pmemd.cuda -O -i mdcp_010ns_100ns.in \
 -p ../01_LEAP/1ENY_Tetramero.top \
 -c mdcp_050ns-060ns.cav \
 -o mdcp_060ns-070ns.out \
 -r mdcp_060ns-070ns.cav \
 -x mdcp_060ns-070ns.ncf

## Production from 70.0 ns to 80.0 ns. NetCDF (.ncf) for restart and trajectory files.
$AMBERHOME/bin/pmemd.cuda -O -i mdcp_010ns_100ns.in \
 -p ../01_LEAP/1ENY_Tetramero.top \
 -c mdcp_060ns-070ns.cav \
 -o mdcp_070ns-080ns.out \
 -r mdcp_070ns-080ns.cav \
 -x mdcp_070ns-080ns.ncf

## Production from 80.0 ns to 90.0 ns. NetCDF (.ncf) for restart and trajectory files.
$AMBERHOME/bin/pmemd.cuda -O -i mdcp_010ns_100ns.in \
 -p ../01_LEAP/1ENY_Tetramero.top \
 -c mdcp_070ns-080ns.cav \
 -o mdcp_080ns-090ns.out \
 -r mdcp_080ns-090ns.cav \
 -x mdcp_080ns-090ns.ncf

## Production from 90.0 ns to 100.0 ns. NetCDF (.ncf) for restart and trajectory files.
$AMBERHOME/bin/pmemd.cuda -O -i mdcp_010ns_100ns.in \
 -p ../01_LEAP/1ENY_Tetramero.top \
 -c mdcp_080ns-090ns.cav \
 -o mdcp_090ns-100ns.out \
 -r mdcp_090ns-100ns.cav \
 -x mdcp_090ns-100ns.ncf
