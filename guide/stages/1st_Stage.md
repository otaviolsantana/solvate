## QUICK GUIDE

**CREATION OF SIMULATION BOX** & **FORCE FIELD PARAMETERS**

1. The first stage of using the program consists of creating the simulation box. This is done using the following 
   command:

        packs solute.ext solvent.ext -nm N

   where _N_ corresponds to the number of solvent molecules. The program accepts input and output file formats of 
   _Gaussian_ (`.com`, `.gjf` and `.log`), _ORCA_ (`.inp` and `.out`), _xTB_ (`.xyz` and `. .xtb`), _GROMACS_ (`.gro`) and 
   PDB (`.pdb`), common formats in Computational Chemistry. In the case of ionic solutes, it is possible to include 
   counter-ions with the command:

        packs solute.ext solvent.ext -ci couterion.ext -nm N

   The program determines the number of counterions needed to neutralize the charge in the simulation box. In these 
   cases, the number _N_ of molecules includes the incorporated counterions. The _Solvate_ program also makes it 
   possible to create simulation boxes with solvent mixtures, in which case it is necessary to inform the proportion 
   between the molecules:

        packs solute.ext solvent1.ext solvent2.ext ... -pr [N1:N2:N3...]

   The initial box can also be created based on the molar concentration _M_ of the solute (a situation in which there 
   is more than one solute molecule in the box):

        packs solute.ext solvent.ext -cc M

   or based on molal concentration _M_:

        packs solute.ext solvent.ext -bc M

   The box density _D_ is automatically adjusted based on the density of the solvent used (if it is part of the 
   program's database), or defined manually by the user:

        packs solute.ext solvent.ext -nm N -ds D

   The list of parameterized solvents is obtained from the command:

        packs -list

   Any of the parameterized solvents can be provided as input to the program in the simulation box creation step. If 
   the simulation box is prepared for the _GROMACS_ program (which is determined by the extension of the input files) 
   the program automatically runs the GMDFF module, which prepares the force field files as well as the system 
   topology file. This means that, in the general case, it is possible to create the simulation box and its topology 
   file from a single command line.

   Several additional options for adjusting packaging parameters are available. The complete list can be accessed from 
   the help menu of the _packs_ program (just type the program name on the command line, without additional options).

   * For examples, visit the [GMDFF](https://github.com/otaviolsantana/solvate/blob/main/tutorials/modules/1_GMDFF.md) and [PACKS](https://github.com/otaviolsantana/solvate/blob/main/tutorials/modules/2_PACKS.md) tutorials page.

   « Previous topic | [GUIDE](https://github.com/otaviolsantana/solvate/tree/main/guide) | [Next topic](https://github.com/otaviolsantana/solvate/blob/main/guide/stages/2nd_Stage.md) »
