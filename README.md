<div align="center">
<img src="https://user-images.githubusercontent.com/69423088/253824433-a6b55273-b084-4283-a0b6-b8d40bc52890.png" width="250px"/>
</div>

# _**Solvate Suite**_

**OVERVIEW**

This is the repository for the _Solvate Suite_, a comprehensive software package designed to address various challenges in molecular modeling. The suite's modules interface with widely used open-source software such as _ORCA_, _xTB_, _GROMACS_, _PackMol_, and _Q-Force_, facilitating the sequential treatment of all stages of molecular modeling involving explicit interaction of the species of interest with the solvent, employing both molecular simulation procedures and electronic structure calculations in a hybrid approach (explicit/implicit solvation).

The _suite_ comprises multiple modules, each dedicated to addressing key aspects of molecular modeling:

(1) **Creation of Simulation Box**: This module allows users to create the simulation box according to specified criteria, including the number of solvent molecules, shape and density of the box, solute/solvent concentration, or proportions between solvent mixtures. It also determines force field parameters and constructs the system's topology for classical dynamics-based simulation methods.

(2) **Submission of Simulations**: From this module the user can run simulations with a minimum set of adjusted parameters. These parameters can be modified during runtime or users can use their own simulation parameters.

(3) **Analysis of Simulated Properties**: This module analyzes various simulated properties such as pressure, temperature, density, short-range interaction, total potential energy, and radial distribution function. It includes statistical analysis, graphical representation, and property extraction based on different criteria like block analysis and pressure filter.

(4) **Selection of Hydrogen-Bonded Structures and Microsolvation Clusters**: Users can select a predetermined number of hydrogen-bonded structures or microsolvation clusters, along with solvent molecules per cluster, identified from the simulation trajectory file based on connectivity or energy criteria.

(5) **Treatment of Microsolvation Clusters**: This module conducts semi-empirical Quantum Chemistry calculations on microsolvation clusters to calculate free energy. The module provides various treatment options, including: fixed geometry from simulation, completely optimized cluster structure, or relaxed solvent cavity with optimized solute geometry. The procedure eliminates imaginary frequencies, employs quasi-harmonic correction, and utilizes extrapolation methods for free energy calculations to the user-specified theory level.

(6) **Management of Generated Files**: The suite manages the significant number of files generated throughout the modeling process, ensuring efficient organization and storage.

Overall, the _Solvate Suite_ provides a comprehensive solution for molecular modeling tasks, addressing various complexities encountered in explicit solvent simulations.

For a quick overview on how to use the program, visit the [user manual](https://github.com/otaviolsantana/solvate/tree/main/manual) page.
For more detailed instructions on using the program, including simulation examples, click [here](https://github.com/otaviolsantana/solvate/tree/main/examples). Additional examples can also be found in the _Zenodo_ repository: [part 1](https://doi.org/10.5281/zenodo.8110727) and [part 2](https://doi.org/10.5281/zenodo.10073747).

**INSTALLATION**

	The suite is distributed pre-compiled for Linux systems, being only necessary to configure it.
	To do this, download the program with the command:
 
	   git clone https://github.com/otaviolsantana/solvate.git

   	or

   	   wget https://github.com/otaviolsantana/solvate/archive/refs/heads/main.zip ; unzip main.zip

 	Then, adjust the “profile” and “config” files, and run the “solvate.config” script:

	   cd solvate && chmod +x solvate.config && ./solvate.config
 
**CONTENTS**

	- solvate           : Main program
	- solvate.profile   : Script with suite definitions
	- solvate.config    : Script to configure suite
	- solvate/manual    : Program user manual (Quick Guide)
	- solvate/modules   : Suite modules and sub-modules
	- solvate/nodes     : Pré-compiled dependencies
	- solvate/share     : Parameterized solvents and counterions
	- solvate/suite     : Interfaced installed program links
	- solvate/tests     : Files for program tests
	- solvate/tutorials : Program tutorials

**DEPENDENCIES**

   ***Simulation Box Creation***

     - PackMol v20.14.2
     - Q-Force v1.0

   ***Electronic Structure and Molecular Dynamics Simulation Programs***

     - xTB v6.6.1
     - CREST v2.12
     - ORCA 5.0
     - GROMACS 2023.3

   ***Visualization Programs***

     - JMol
     - VMD

   ***Scripts Interpreter and Libraries***

     - Python 3.10
     - MatPlotLib 3.5
     - Tqdm 4.65
     - PyQt5 5.15

**LICENSE**

SOLVATE is a free software: you can redistribute it under the terms of the BSD 3-Clause License. This software is provided by the copyright holders and contributors “as is”, and any express or implied warranties, including, but not limited to, the implied warranties of merchantability and fitness for a particular purpose, are disclaimed. In no event shall the copyright holder or contributors be liable for any direct, indirect, incidental, special, exemplary, or consequential damages (including, but not limited to, procurement of substitute goods or services; loss of use, data, or profits; or business interruption) however caused and on any theory of liability, whether in contract, strict liability, or tort (including negligence or otherwise) arising in any way out of the use of this software, even if advised of the possibility of such damage.

**LINKS**

PackMol: [https://m3g.github.io/packmol/download.shtml] | Q-Force: [https://qforce.readthedocs.io/en/latest/index.html] | xTB: [https://xtb-docs.readthedocs.io/en/latest/] | CREST: [https://crest-lab.github.io/crest-docs/] | ORCA: [https://orcaforum.kofo.mpg.de/app.php/portal] | GROMACS:  [https://www.gromacs.org] | JMol: [https://jmol.sourceforge.net/] | VMD: [https://www.ks.uiuc.edu/Research/vmd/]
