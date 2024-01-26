# _**Solvate Suite**_

**INSTALLATION**

The suite is distributed pre-compiled for Linux systems, being only necessary to configure it. To do this, download the program with the command:
 
	git clone https://github.com/otaviolsantana/solvate.git
  
Then, adjust the “profile” and “config” files, and run the “solvate.config” script:

	cd solvate && chmod +x solvate.config && ./solvate.config
 
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
