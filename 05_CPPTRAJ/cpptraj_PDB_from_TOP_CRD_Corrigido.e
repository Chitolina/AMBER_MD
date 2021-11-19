## Processing the heating and prod files

#01 Fixing the periodicity of the simulation box.
cpptraj  1ENY_Tetramero.top << EOF
trajin   ../mdcp_*.crd
trajin   ../mdcp_*.ncf

center :1-1076
image

trajout   mdcp_000ns-100ns_BoxFit.ncf netcdf		!Output also in netCDF format, cre is default.

EOF

#02  PDBs from a NetCDF trajectory file

cpptraj  1ENY_Tetramero.top << EOF
trajin   mdcp_000ns-100ns_BoxFit.ncf 1 10000 20

#reading from 1 to 10000 and save every 20 frames
#strip :Na+
strip :WAT

trajout   mdcp_000ns-100ns_1ENY_TETRA_P_03.pdb pdb			! P is the protein; N is the coenzyme

EOF
