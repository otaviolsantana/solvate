## USER MANUAL - QUICK GUIDE

**SUBMISSION OF SIMULATIONS** & **ANALYSIS OF SIMULATED PROPERTIES**

2. From the MDRUN module, the execution of simulations with the ORCA and GROMACS programs is carried out using the 
   same set of command lines. In the case of ORCA, the simulation execution options are set directly in the `.inp` 
   input file at run time on the command line. In the case of GROMACS, the options are adjusted and saved in its own 
   `.mdp` settings file. In the latter case, there are a greater number of simulation execution options, such as type 
   of barostat and thermostat, time constant for pressure and temperature coupling, isothermal compressibility and 
   saving frequency, among others. For example, the initialization (energy minimization and optimization) of the 
   simulation box, for a pressure of 1.0 bar and 298.15 K temperature, is executed with the command:

        mdrun simbox.gro -ini -prs 1.0 -tmp 298.15

   After energy minimization, temperature equilibration can be carried out in an NVT ensemble. For example, running 
   1.0 ns for equilibration on the NVT ensemble can be executed with the command:

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

   Several options for adjusting simulation parameters are available for the ORCA and GROMACS programs. The complete 
   list can be accessed from the help menu of the MDRUN and DATAS modules (just type the program name on the command 
   line, without additional options).

   * For examples, visit the MDRUN and DATAS tutorials page. (under construction...)

   « [Previous topic](https://github.com/otaviolsantana/solvate/blob/main/manual/1st_PACKS.md) | [MANUAL](https://github.com/otaviolsantana/solvate/tree/main/manual) | Next topic »
