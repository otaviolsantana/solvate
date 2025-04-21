# **Microsolvation**

## Setting Up the Microsolvation

In the **third stage**, after extracting the trajectory, the truncated trajectory file `simbox.trj.xyz` is obtained. The MICRO module can then select *N* number of lower-energy clusters, each containing *M* solvent molecules. The value of *M* can be determined from a previous RDF analysis (using the DATAS module), set based on the solute-solvent ratio (at a concentration specified by the user), or calculated automatically (based on a cutoff distance corresponding to the diameter of the sphere encompassing the solvent molecule). The extraction is performed using the following command:

> micro simbox.trj.xyz -nc N -ns M

The extraction based on molal concentration C is performed using the command:

> micro simbox.trj.xyz -nc N -bc C

The extraction based on the number S of solvation shells is performed using the command:

> micro simbox.trj.xyz -nc N -nl S

After this extraction, the selected clusters are saved in a file named solute.trj.xyz. This file can be used to analyze hydrogen bonds with the BONDS module. Alternatively, one can treat microsolvation at the level of the first solvation shell with the GCALC module, simultaneously treating all types of short-range interactions present in the system under investigation, regardless of the nature of the solvent. These modules are executed in two steps. In the first, all clusters present in the solute.trj.xyz file are characterized, aiming to select several C clusters with the lowest energy, with the command:

> bonds solute.trj.xyz -ini -max C

or:

> gcalc solute.trj.xyz -ini -max C

In the second step, the C clusters are prepared for optimization and the Gibbs free energy extrapolation, considering one of the treatment options to remove any imaginary frequencies:

> bonds solute.trj.xyz -opt -max C

or:

> gcalc solute.trj.xyz -opt -max C

The default mode is called FCA, with lower computational cost. The input files are saved in a separate jobrunning folder at this stage. In this folder, the module QUEUE can be executed to perform the optimization and the Gibbs free energy extrapolation in a queueying system:

> queue -key “ONIOM KeyWords” -run

```{note}
Several additional options for treating clusters are available. The complete list can be accessed in the help menu of the MICRO, BONDS/GCALC, and QUEUE modules (just type the program name on the command line, without additional options). Finally, all the processes can be automated through the MSRUN module. For examples, visit the MICRO, BONDS/GCALC, and QUEUE tutorials page.
```

![image](images/stage3.png)
