## *DATAS* :: Analysis of Simulated Properties

The DATAS module performs graphical and statistical analysis of simulated properties, through a unified interface for the ORCA and GROMACS programs. It can be used from the command:

	datas simbox.ext -options

where _ext_ is one of the extensions recognized by _Solvate Suite_ (`inp` [ORCA] or `gro` [GROMACS]), and “-options” a set of the configurations for the data analysis. The list of options can be seen from the application menu, which is accessible from the command line by typing the module name, without any other parameters.

For examples, see:

* Example #1: [Data analysis from ORCA simulation](https://github.com/otaviolsantana/solvate/tree/main/tests/examples/4_DATAS_Test01)
* Example #2: [Data analysis from GROMACS simulation](https://github.com/otaviolsantana/solvate/tree/main/tests/examples/4_DATAS_Test02)
