## USER MANUAL - QUICK GUIDE

**CLUSTERS SELECTION** & **MICROSOLVATION TREATMENT**

3. After extracting the trajectory, the truncated trajectory file `simbox.trj.xyz` is obtained. The MICRO module can 
   then select _N_ number of lower-energy clusters, each containing _M_ solvent molecules. The value of _M_ can be 
   determined from a previous RDF analysis (using the DATAS module), set based on the solute-solvent ratio (at a 
   concentration specified by the user), or calculated automatically (based on a cutoff distance corresponding to the 
   diameter of the sphere encompassing the solvent molecule). The extraction is performed using the following command:

        micro simbox.trj.xyz -nc N -ns M

   The extraction based on molal concentration _C_ is performed using the command:

        micro simbox.trj.xyz -nc N -bc C

   The extraction based on the number _S_ of solvation shells is performed using the command:

        micro simbox.trj.xyz -nc N -nl S

   After this extraction, the selected clusters are saved in a file named `solute.trj.xyz`. This file can be used to 
   analyze hydrogen bonds with the HBOND module, from which _H_ structures can be generated with the command:

        hbond solute.trj.xyz -nc H

   Alternatively, one can treat microsolvation at the level of the first solvation shell with the GCALC module, 
   simultaneously treating all types of short-range interactions present in the system under investigation, regardless 
   of the nature of the solvent. This module runs in three steps. In the first, all clusters present in the 
   `solute.trj.xyz` file are characterized, aiming to select a number _C_ of clusters with the lowest energy, with the 
   command:

        gcalc solute.trj.xyz -ini -max C

   After the first step, the selected _C_ clusters are saved in a file called `solute.trx.xyz`. In the second stage, 
   the _C_ clusters are optimized considering one of the treatment options to remove any imaginary frequencies:

        gcalc solute.trj.xyz -gfe -max C

   where `gfe` is one of the implemented optimization modes (the default mode is called FCA, with lower computational 
   cost). The input files for the optimization are saved in a file named `solute.try.xyz`. Finally, the optimized _C_ 
   clusters can now be used to extrapolate properties using the ONIOM method. The input files for the extrapolation 
   are saved in a file named `solute.trz.xyz`, which is generated from the command:

        gcalc solute.trj.xyz -ext -max C

   In the optimization and extrapolation stages, the input files are saved in a separate directory, where a script for 
   submitting the calculations is generated. This script allows all selected clusters to be processed in the 
   corresponding step with a single submission to a queuing system.

   Several additional options for treating clusters are available. The complete list can be accessed in the help menu 
   of the MICRO, HBOND, and GCALC modules (just type the program name on the command line, without additional options).

* For examples, visit the MICRO, HBOND, and GCALC tutorials page. (under construction)

   « [Previous topic](https://github.com/otaviolsantana/solvate/blob/main/manual/2nd_Stage.md) | [MANUAL](https://github.com/otaviolsantana/solvate/tree/main/manual) | Next topic »
