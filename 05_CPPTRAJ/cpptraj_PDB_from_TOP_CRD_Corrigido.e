## Processamento da trajetória de aquecimento de 10.00 k a 298.16 (25.0 C) em 10.0 ns.
# A trajetória de saída será de 1 em 1 ps

#01 Fixing the periodicity of the simulation box.
cpptraj  1ENY_Tetramero.top << EOF
trajin   ../mdcp_*.crd
trajin   ../mdcp_*.ncf

center :1-1076
image

trajout   mdcp_000ns-100ns_BoxFit.ncf netcdf		! Output também no formato netCDF, cre é default.

EOF

#02  PDBs from a NetCDF trajectory file

cpptraj  1ENY_Tetramero.top << EOF
trajin   mdcp_000ns-100ns_BoxFit.ncf 1 10000 20

#vai ler do 1 ao 10000 e salvar a cada 20 frames
#strip :Na+
strip :WAT

trajout   mdcp_000ns-100ns_1ENY_TETRA_P_03.pdb pdb			! P is the protein; N is the coenzyme

EOF
