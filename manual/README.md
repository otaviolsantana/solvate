# _**Solvate Suite**_: User Manual - Quick Guide

<div align="center">
<img src="https://github.com/otaviolsantana/solvate/assets/69423088/cf13d12e-1b75-411c-a058-0317c1b7d890" width="750px"/>
</div>

<div align="center">
<img src="https://github.com/otaviolsantana/solvate/assets/69423088/f4d64def-8bed-440c-86b1-bf35764036bd" width="750px"/>
</div>

<div align="center">
<img src="https://github.com/otaviolsantana/solvate/assets/69423088/948efc7e-f83f-4539-916c-69ab189da808" width="750px"/>
</div>

**OVERVIEW**

This is a manual of _Solvate Suite_. The modules of the main program interfaces with various widely used software in the scientific community (such as ORCA, xTB, GROMACS, PackMol, and Q-Force), enabling the sequential treatment of all stages of molecular modeling involving explicit interaction of the species of interest with the any solvent using molecular simulation procedures and electronic structure calculations in a hybrid approach (explicit/implicit solvent).
 
**CONTENTS**

	- solvate         : Main program
	- solvate.profile : Script with suite definitions
	- solvate.config  : Script to configure suite
	- solvate/modules : Folder with program modules and sub-modules
	- solvate/nodes   : Folder with program dependencies
	- solvate/suite   : Folder with program links

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

**TESTED MACHINE CONFIGURATION**

	OS: Kubuntu 22.04.2 LTS x86_64 
	Kernel: 5.15.0-76-generic 
	Shell: bash 5.1.16 
	CPU: AMD Ryzen 7
	Memory: 6 GB 

**CITATION**

If you use _Solvate Suite_, please cite:

“_Solvate Suite: A Command-Line Interface for Molecular Simulations and Multiscale Microsolvation Modeling._”

**LICENSE**

SOLVATE is a free software: you can redistribute it under the terms of the BSD 3-Clause License. This software is provided by the copyright holders and contributors “as is”, and any express or implied warranties, including, but not limited to, the implied warranties of merchantability and fitness for a particular purpose, are disclaimed. In no event shall the copyright holder or contributors be liable for any direct, indirect, incidental, special, exemplary, or consequential damages (including, but not limited to, procurement of substitute goods or services; loss of use, data, or profits; or business interruption) however caused and on any theory of liability, whether in contract, strict liability, or tort (including negligence or otherwise) arising in any way out of the use of this software, even if advised of the possibility of such damage.

**LINKS**

PackMol: [https://m3g.github.io/packmol/download.shtml] | Q-Force: [https://qforce.readthedocs.io/en/latest/index.html] | xTB: [https://xtb-docs.readthedocs.io/en/latest/] | CREST: [https://crest-lab.github.io/crest-docs/] | ORCA: [https://orcaforum.kofo.mpg.de/app.php/portal] | GROMACS:  [https://www.gromacs.org] | JMol: [https://jmol.sourceforge.net/] | VMD: [https://www.ks.uiuc.edu/Research/vmd/]
