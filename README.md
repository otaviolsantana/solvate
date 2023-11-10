<div align="center">
<img src="https://user-images.githubusercontent.com/69423088/253824433-a6b55273-b084-4283-a0b6-b8d40bc52890.png" width="250px"/>
</div>

# _**Solvate Suite**_

**OVERVIEW**

Under construction...

**INSTALLATION**

	The suite is distributed pre-compiled for Linux systems, being only necessary to configure it.
	To do this, download the program with the command:
 
		git clone https://github.com/otaviolsantana/solvate.git
  
	Then, adjust the “solvate.profile” and “solvate.config” files, and run the “solvate.config” script:

		cd solvate && chmod +x solvate.config && ./solvate.config
 
**CONTENTS**

	- solvate         : Main program
	- solvate.profile : Script with suite definitions
	- solvate.config  : Script to configure suite
	- solvate/modules : Folder with program modules and sub-modules
	- solvate/nodes   : Folder with program dependencies
	- solvate/suite   : Folder with program links

**DEPENDENCIES**

   * Simulation Box Creation

     - PackMol v20.14.2
       [https://m3g.github.io/packmol/download.shtml]      [https://github.com/m3g/packmol]
     - Q-Force v1.0
       [https://qforce.readthedocs.io/en/latest/index.html][https://github.com/selimsami/qforce]

   * Electronic Structure and Molecular Dynamics Simulation Programs
	- xTB v6.6.1       : [https://xtb-docs.readthedocs.io/en/latest/]        [https://github.com/grimme-lab/xtb/releases/tag/v6.6.1]
	- ORCA 5.0         : [https://orcaforum.kofo.mpg.de/app.php/portal]      [https://orcaforum.kofo.mpg.de/app.php/dlext/?cat=21]
	- GROMACS 2023.3   : [https://www.gromacs.org]                           [https://manual.gromacs.org/2023.3/download.html]

   * Visualization Programs
	- Avogadro         : [https://avogadro.cc/]                              [https://sourceforge.net/projects/avogadro/]
	- JMol             : [https://jmol.sourceforge.net/]                     [https://jmol.sourceforge.net/download/]
	- VMD              : [https://www.ks.uiuc.edu/Research/vmd/]             [https://www.ks.uiuc.edu/Development/Download/download.cgi?PackageName=VMD]

**TESTED MACHINE CONFIGURATION**

	OS: Kubuntu 22.04.2 LTS x86_64 
	Kernel: 5.15.0-76-generic 
	Shell: bash 5.1.16 
	CPU: AMD Ryzen 7 3700U with Radeon Vega Mobile Gfx (8) @ 2.300GHz 
	GPU: AMD ATI Radeon Vega Series / Radeon Vega Mobile Series 
	Memory: 3762MiB / 5794MiB 

**CITATION**

If you use _Solvate Suite_, please cite:

“_Solvate Suite Part I: A Complete and Modular Command-Line User Interface for Tool Integration in Molecular Simulation Studies of Liquid Systems._”

“_Solvate Suite Part II: A Complete and Modular Software for Microsolvation Molecular Modeling with a Sequential Hybrid and Multiscale Approach._”
