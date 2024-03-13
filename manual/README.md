<div align="center">
<img src="https://user-images.githubusercontent.com/69423088/253824433-a6b55273-b084-4283-a0b6-b8d40bc52890.png" width="250px"/>
</div>

## OVERVIEW

This is a user manual for _Solvate Suite_, a set of programs for building initial simulation box configuration, force field and topology files for molecular dynamics simulations of molecular systems in solution.

**PROGRAM STUCTURE**

* **(1st Stage)** Creation of Simulation Box

<div align="center">
<img src="https://github.com/otaviolsantana/solvate/assets/69423088/cf13d12e-1b75-411c-a058-0317c1b7d890" width="750px"/>
</div>

* **(2nd Stage)** Submission of Simulations & Analysis of Simulated Properties

<div align="center">
<img src="https://github.com/otaviolsantana/solvate/assets/69423088/f4d64def-8bed-440c-86b1-bf35764036bd" width="750px"/>
</div>

* **(3rd Stage)** Selection and Treatment of Microsolvation Clusters

<div align="center">
<img src="https://github.com/otaviolsantana/solvate/assets/69423088/948efc7e-f83f-4539-916c-69ab189da808" width="750px"/>
</div>

## USER MANUAL - QUICK GUIDE

1. The first stage of using the program consists of creating the simulation box. This is done using the following 
   command:

        solvate solute.ext solvent.ext -nm N

   where _N_ corresponds to the number of solvent molecules. The program accepts input and output file formats of 
   Gaussian (`.com`, `.gjf` and `.log`), ORCA (`.inp` and `.out`), xTB (`.xyz` and `. .xtb`), GROMACS (`.gro`) and 
   PDB (`.pdb`), common formats in Computational Chemistry. In the case of ionic solutes, it is possible to include 
   counter-ions with the command:

        solvate solute.ext solvent.ext -ci couterion.ext -nm N

   The program determines the number of counterions needed to neutralize the charge in the simulation box. In these 
   cases, the number N of molecules includes the incorporated counterions. The _Solvate_ program also makes it 
   possible to create simulation boxes with solvent mixtures, in which case it is necessary to inform the proportion 
   between the molecules:

        solvate solute.ext solvent1.ext solvent2.ext ... -pr [N1:N2:N3...]

   The initial box can also be created based on the molar concentration _M_ of the solute (a situation in which there 
   is more than one solute molecule in the box):

        solvate solute.ext solvent.ext -cc M

   or based on molal concentration _M_:

        solvate solute.ext solvent.ext -bc M

   The box density _D_ is automatically adjusted based on the density of the solvent used (if it is part of the 
   program's database), or defined manually by the user:

        solvate solute.ext solvent.ext -nm N -ds D

   The list of parameterized solvents is obtained from the command:

        solvate -list

   Any of the parameterized solvents can be provided as input to the program in the simulation box creation step. If 
   the simulation box is prepared for the GROMACS program (which is determined by the extension of the input files) 
   the program automatically runs the GMDFF module, which prepares the force field files as well as the system 
   topology file. This means that, in the general case, it is possible to create the simulation box and its topology 
   file from a single command line.

   For examples, visit the [GMDFF](https://github.com/otaviolsantana/solvate/blob/main/tutorials/1_GMDFF.md) and [PACKS](https://github.com/otaviolsantana/solvate/blob/main/tutorials/2_PACKS.md) tutorials page.
