## *MDRUN* :: Submission of Simulations

The MDRUN module manages the execution of simulations, through a unified interface for the ORCA and GROMACS programs. It can be used from the command:

	mdrun simbox.ext -options

where _ext_ is one of the extensions recognized by _Solvate Suite_ (`inp` [ORCA] or `gro` [GROMACS]), and “-options” a set of the configurations for the simulation execution. The list of options can be seen from the application menu, which is accessible from the command line by typing the module name, without any other parameters.

For examples, see:

* Example #1: [Submitting a simulation with ORCA](https://github.com/otaviolsantana/solvate/tree/main/tests/examples/3_MDRUN_Test01)
* Example #2: [Submitting a simulation with GROMACS](https://github.com/otaviolsantana/solvate/tree/main/tests/examples/3_MDRUN_Test02)
