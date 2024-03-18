## USER MANUAL - QUICK GUIDE

**SUBMISSION OF SIMULATIONS** & **ANALYSIS OF SIMULATED PROPERTIES**

2. From the MDRUN module, the execution of simulations with the _ORCA_ and _GROMACS_ programs is carried out using the 
   same set of command lines. In the case of _ORCA_, the simulation execution options are set directly in the `.inp` 
   input file at run time on the command line. In the case of _GROMACS_, the options are adjusted and saved in its own 
   `.mdp` settings file. In the latter case, there are a greater number of simulation execution options, such as type 
   of barostat and thermostat, time constant for pressure and temperature coupling, isothermal compressibility and 
   saving frequency, among others. Initially, it is possible to check whether the options automatically configured 
   after packaging are appropriate, before starting the simulation:

        mdrun simbox.gro -chk

   Before starting the simulation, it is necessary to carry out an initialization step for the initial box, which 
   includes energy minimization and box optimization. For example, to initialize the simulation box at a pressure of 
   1.0 bar and a temperature of 298.15 K, you can use the following command:

        mdrun simbox.gro -ini -prs 1.0 -tmp 298.15

   After initialization, temperature equilibration can be performed in an NVT ensemble. For example, running 1.0 ns 
   for equilibration in the NVT ensemble can be executed with the following command:

        mdrun simbox.gro -nvt -tmp 298.15 -tot 1.0

   and the pressure equilibration, in an NPT ensemble, with:

        mdrun simbox.gro -npt -prs 1.0 -tmp 298.15 -tot 1.0

   The equilibration steps involve saving the trajectory every 100 steps (in a `.trr` file) to conserve disk space. To 
   assess the equilibrium, the properties acquired during the simulation can be analyzed using the DATAS module with 
   the following command:

        datas simbox.log

   Properties such as pressure (in this case NPT), temperature, density, and potential energy are evaluated 
   graphically and statistically (descriptive statistics include the calculation of standard error, standard deviation 
   and drift of properties; RMSD and RDF analysis are also available).

   After achieving equilibration, the production step can proceed. In this step, the trajectory is saved at each step 
   of the simulation (in an `.xtc` file). Production is run with the following command:

        mdrun simbox.gro -prd -prs 1.0 -tmp 298.15 -tot 5.0

   After production, data extraction can be carried out with trajectory truncation. There are several options 
   available, which include the possibility of performing RMSD and RDF analysis of the truncated trajectory. The 
   simplest procedure is to execute the command:

        datas simbox.log -ext

   Finally, after extraction, it is possible to remove several unnecessary files in the microsolvation treatment, 
   which can be done with the command:

        mdrun simbox.gro -cls

   Several options for adjusting simulation parameters, as well as analyzing properties and extracting data, are 
   available for the _ORCA_ and _GROMACS_ programs. The complete list can be accessed in the help menu of the MDRUN 
   and DATAS modules (just type the name of the program in the command line, without additional options).

   * For examples, visit the MDRUN and DATAS tutorials page. (under construction...)

   « [Previous topic](https://github.com/otaviolsantana/solvate/blob/main/manual/stages/1st_PACKS.md) | [MANUAL](https://github.com/otaviolsantana/solvate/tree/main/manual) | [Next topic](https://github.com/otaviolsantana/solvate/blob/main/manual/stages/3rd_Stage.md) »
