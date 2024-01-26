**PACKS :: Simulation Box Creation**

The PACKS module mediates the creation of the simulation box, through the iterative use of the _PackMol_ program. It can be used from the command:

	packs file1.ext file2.ext {...} -options

where _ext_ is one of the extensions recognized by _Solvate Suite_ (com/log [Gaussian], inp/out [ORCA], xyz/xtb [xTB], gro/pdb [GROMACS]), fileN the files with the structures of the solute and solvent molecules, and “-options” a set of options for the configuration of the box to be created. The list of options can be seen from the application menu, which is accessible from the command line by typing the module name, without any other parameters.

For examples, see:

[https://github.com/otaviolsantana/solvate/tree/main/tests/2_PACKS_Test01]

[https://github.com/otaviolsantana/solvate/tree/main/tests/2_PACKS_Test02]

[https://github.com/otaviolsantana/solvate/tree/main/tests/2_PACKS_Test03]

[https://github.com/otaviolsantana/solvate/tree/main/tests/2_PACKS_Test04]
