<div align="center">
<img src="https://user-images.githubusercontent.com/69423088/253824433-a6b55273-b084-4283-a0b6-b8d40bc52890.png" width="500px"/>
</div>

# _**Solvate Suite**_ 2023.07

Last update: 07.jul.2023

**OVERVIEW**

This is a repository of _Solvate Suite_. The modules of the main program interfaces with various widely used open-source software in the scientific community (such as _ORCA_, _xTB_, _GROMACS_, _PackMol_, and _Q-Force_), enabling the sequential treatment of all stages of molecular modeling involving explicit interaction of the species of interest with the solvent (in principle, any solvent) using molecular simulation procedures and electronic structure calculations in a hybrid approach (explicit/implicit solvent).

(1) The first problem that the program aims to solve is the creation of the simulation box, considering several user-specified criteria (such as the number of solvent molecules, shape and density of the simulation box, solute/solvent concentration, or proportion between solvent mixtures), as well as the construction of the system's topology and force field parameters (in the case of simulation methods based on classical dynamics).

(2) The second problem is the submission of the simulation calculation with a minimal adjusted set of parameters (some of which can be altered by the user during runtime; alternatively, the user can perform this step with their own simulation parameters).

(3) The third is the analysis of simulated properties (pressure, temperature, density, short-range interaction, total potential energy, and radial distribution function), including statistical analysis (such as stochastic average values, standard error, and standard deviation), graphical analysis, and extraction of properties by different criteria (such as block analysis and pressure filter).

(4) The fourth involves selecting a user-determined number of hydrogen-bonded structures or microsolvation clusters and solvent molecules per cluster identified from the simulation trajectory file based on the maximum connectivity criterion (hydrogen bonds) or minimum energy criterion (hydrogen bonds and microsolvation clusters).

(5) The fifth involves the treatment (by semi-empirical Quantum Chemistry methods) of microsolvation clusters for the calculation of free energy, considering three criteria: in the fixed geometry extracted from the simulation, in a completely optimized cluster structure, or in a relaxed solvent cavity and completely optimized solute geometry. In any case, the procedure removes all imaginary frequencies (which have a significant weight in the composition of free energy), as well as using the quasi-harmonic correction (to handle low-frequency intermolecular modes), followed by the use of extrapolation methods for free energy to the theory level specified by the user (which also allows extrapolation of the base set limit employed in implicit solvent effect modeling methods considering microsolvation clusters with at least the first solvation layer).

(6) The sixth and final step involves managing the significant number of files generated throughout the modeling process.

**INSTALLATION**

	The suite is distributed pre-compiled for Linux systems, being only necessary to configure it.
 	For this, adjust and load the “solvate.profile” file and run the “solvate.config” script.
 
**CONTENTS**

	- solvate           : Main program
	- solvate.config    : Script to configure suite
	- solvate.profile   : Script with suite definitions
	- solvate/modules   : Folder with program modules and sub-modules
	- solvate/nodes     : Folder with program dependencies
	- solvate/suite     : Folder with program links

**TESTED MACHINE CONFIGURATION**

	OS: Kubuntu 22.04.2 LTS x86_64 
	Kernel: 5.15.0-76-generic 
	Shell: bash 5.1.16 
	CPU: AMD Ryzen 7 3700U with Radeon Vega Mobile Gfx (8) @ 2.300GHz 
	GPU: AMD ATI Radeon Vega Series / Radeon Vega Mobile Series 
	Memory: 3762MiB / 5794MiB 
