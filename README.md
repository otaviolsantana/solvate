<div align="center">
<img src="https://user-images.githubusercontent.com/69423088/253824433-a6b55273-b084-4283-a0b6-b8d40bc52890.png" width="250px"/>
</div>

# _**Solvate Suite**_

**OVERVIEW**

This is a repository of _Solvate Suite_. The modules of the main program interfaces with various widely used software in the scientific community (such as _ORCA_, _xTB_, _GROMACS_, _PackMol_, and _Q-Force_), enabling the sequential treatment of all stages of molecular modeling involving explicit interaction of the species of interest with the any solvent using molecular simulation procedures and electronic structure calculations in a hybrid approach (explicit/implicit solvent).

(1) The first problem that the program aims to solve is the creation of the simulation box (PACKS module), considering several user-specified criteria (such as the number of solvent molecules, shape and density of the simulation box, solute/solvent concentration, or proportion between solvent mixtures), as well as the construction of the system's force field and topology parameters (GMDFF module, in the case of simulation methods based on classical dynamics).

(2) The second problem is submitting the simulation with a minimal adjusted set of parameters (MDRUN module; all parameters can be altered by the user during runtime).

(3) The third is the analysis of simulated properties (DATAS module; properties analyzed include pressure, temperature, density, short-range interaction, total potential energy, and radial distribution function), including statistical analysis (such as stochastic average values, standard error, and standard deviation, via STATS module), graphical analysis (PLOTS module), and extraction of properties by different criteria (such as block analysis and pressure filter, via TRAJS module).

(4) TheThe fourth involves extraction of a determined number of microsolvation clusters identified from the simulation trajectory file (MICRO module) and explicit treatment of the solvent based on the maximum connectivity criterion (HBOND module, for hydrogen bonds) or multiple layers of solventization (GCALC module, for geometry optimization with treatment of possible imaginary frequencies). The treatment (by semi-empirical and DFT Quantum Chemistry methods) of microsolvation clusters for the calculation of free energy considers three criteria: in the fixed geometry extracted from the simulation, in a completely optimized cluster structure, or in a relaxed solvent cavity and completely optimized solute geometry. In any case, the procedure removes all imaginary frequencies (which have a significant weight in the composition of free energy), and uses the quasi-harmonic correction (to handle low-frequency intermolecular modes), followed by the use of extrapolation methods for free energy to the theory level specified by the user (which also allows extrapolation of the basis set restriction in the implicit solvent methods when considering microsolvation clusters with at least the first solvation layer).

(5) The fifth and final step involves managing the significant number of files generated throughout the modeling process (FILES module).

**INSTALLATION**

The suite is distributed pre-compiled for Linux systems, being only necessary to configure it. To do this, install _git_ package in your system, and download the program suite with the command:
 
	git clone https://github.com/otaviolsantana/solvate.git
or

	wget https://github.com/otaviolsantana/solvate/archive/refs/heads/main.zip
  
Then, adjust the “profile” and “config” files, and run the “solvate.config” script:

	cd solvate && chmod +x solvate.config && ./solvate.config
 
**CONTENTS**

	- solvate           : Main program
	- solvate.profile   : Script with suite definitions
	- solvate.config    : Script to configure suite
	- solvate/modules   : Program modules and sub-modules
	- solvate/nodes     : Program dependencies
	- solvate/share     : Program force field parameters
	- solvate/suite     : Program links
	- solvate/tests     : Program tests
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

**CITATION**

Under construction...

**LICENSE**

SOLVATE is a free software: you can redistribute it under the terms of the BSD 3-Clause License. This software is provided by the copyright holders and contributors “as is”, and any express or implied warranties, including, but not limited to, the implied warranties of merchantability and fitness for a particular purpose, are disclaimed. In no event shall the copyright holder or contributors be liable for any direct, indirect, incidental, special, exemplary, or consequential damages (including, but not limited to, procurement of substitute goods or services; loss of use, data, or profits; or business interruption) however caused and on any theory of liability, whether in contract, strict liability, or tort (including negligence or otherwise) arising in any way out of the use of this software, even if advised of the possibility of such damage.

**LINKS**

PackMol: [https://m3g.github.io/packmol/download.shtml] | Q-Force: [https://qforce.readthedocs.io/en/latest/index.html] | xTB: [https://xtb-docs.readthedocs.io/en/latest/] | CREST: [https://crest-lab.github.io/crest-docs/] | ORCA: [https://orcaforum.kofo.mpg.de/app.php/portal] | GROMACS:  [https://www.gromacs.org] | JMol: [https://jmol.sourceforge.net/] | VMD: [https://www.ks.uiuc.edu/Research/vmd/]
