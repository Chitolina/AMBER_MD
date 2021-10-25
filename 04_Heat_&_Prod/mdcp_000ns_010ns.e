##HEATING 

export CUDA_VISIBLE_DEVICES="1" 

## DM 10 K to 50 K in 200 ps
$AMBERHOME/bin/pmemd.cuda -O -i mdcp_01.in \
 -p ../01_LEAP/1ENY_Tetramero.top \
 -c ../02_EMIN/mini_05.rst \
 -o mdcp_01.out \
 -r mdcp_01.cav \
 -x mdcp_01.crd \

## DM 50 K to 100 K in 200 ps
$AMBERHOME/bin/pmemd.cuda -O -i mdcp_02.in \
 -p ../01_LEAP/1ENY_Tetramero.top \
 -c mdcp_01.cav \
 -o mdcp_02.out \
 -r mdcp_02.cav \
 -x mdcp_02.crd \

## DM 100 K to 150 K in 200 ps
$AMBERHOME/bin/pmemd.cuda -O -i mdcp_03.in \
 -p ../01_LEAP/1ENY_Tetramero.top \
 -c mdcp_02.cav \
 -o mdcp_03.out \
 -r mdcp_03.cav \
 -x mdcp_03.crd \

## DM 150 K to 200 K in 200 ps
$AMBERHOME/bin/pmemd.cuda -O -i mdcp_04.in \
 -p ../01_LEAP/1ENY_Tetramero.top \
 -c mdcp_03.cav \
 -o mdcp_04.out \
 -r mdcp_04.cav \
 -x mdcp_04.crd \

## DM 200 K to 250 K in 200 ps
$AMBERHOME/bin/pmemd.cuda -O -i mdcp_05.in \
 -p ../01_LEAP/1ENY_Tetramero.top \
 -c mdcp_04.cav \
 -o mdcp_05.out \
 -r mdcp_05.cav \
 -x mdcp_05.crd \

## DM 250 K to 298.16 K in 200 ps
$AMBERHOME/bin/pmemd.cuda -O -i mdcp_06.in \
 -p ../01_LEAP/1ENY_Tetramero.top \
 -c mdcp_05.cav \
 -o mdcp_06.out \
 -r mdcp_06.cav \
 -x mdcp_06.crd \

## DM 298.16 K to 298.16 K in 8.800 ps ou 8.8 ns - Total Warm-Up de 10.0 ns
$AMBERHOME/bin/pmemd.cuda -O -i mdcp_07.in \
 -p ../01_LEAP/1ENY_Tetramero.top \
 -c mdcp_06.cav \
 -o mdcp_07.out \
 -r mdcp_07.cav \
 -x mdcp_07.crd \
