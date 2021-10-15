## Starting Minimization at with K=25Kcal/mol/angstroms to K=0Kcal/mol/angstroms
			
##			#Antes de se iniciar as simulações de DM,o sistema deve ser minimizado para eliminar
			maus contatos entre os átomos. A minimização de energia, também conhecida como otimização
			da geometria, é uma técnica que visa encontrar um conjunto de coordenadas que minimizam a
			energia potencial do sistema de interesse. 


mpirun -np 16 $AMBERHOME/bin/sander.MPI -O -i mini_00.in \
-p ../01_LEAP/1ENY_Tetramero.top \
-c mdcp_00.cav \
-o mini_00.out \
-r mini_00.rst \
-ref mdcp_00.cav \

# with K=20Kcal/mol/angstroms 
mpirun -np 16 $AMBERHOME/bin/sander.MPI -O -i mini_00.in \
-p ../01_LEAP/1ENY_Tetramero.top \
-c mini_00.rst \
-o mini_01.out \
-r mini_01.rst \
-ref mini_00.rst

# with K=10Kcal/mol/angstroms
mpirun -np 16 $AMBERHOME/bin/sander.MPI -O -i mini_00.in \
-p ../01_LEAP/1ENY_Tetramero.top \
-c mini_01.rst \
-o mini_02.out \
-r mini_02.rst \
-ref mini_01.rst

# with K=5Kcal/mol/angstroms
mpirun -np 16 $AMBERHOME/bin/sander.MPI -O -i mini_00.in \
-p ../01_LEAP/1ENY_Tetramero.top \
-c mini_02.rst \
-o mini_03.out \
-r mini_03.rst \
-ref mini_02.rst

# with K=1Kcal/mol/angstroms
mpirun -np 16 $AMBERHOME/bin/sander.MPI -O -i mini_00.in \
-p ../01_LEAP/1ENY_Tetramero.top \
-c mini_03.rst \
-o mini_04.out \
-r mini_04.rst \
-ref mini_03.rst

# with K=0Kcal/mol/angstroms
mpirun -np 16 $AMBERHOME/bin/sander.MPI -O -i mini_00.in \
-p ../01_LEAP/1ENY_Tetramero.top \
-c mini_04.rst \
-o mini_05.out \
-r mini_05.rst \
-ref mini_04.rst

