## *GMDFF* :: Generation of Molecular Dynamics Force Fields

The GMDFF module mediates the creation of force field parameters (itp files), as well as making special adjustments for the construction of the topology (top file). It can be used using the command:
 
	gmdff input.ext
  
where _ext_ is one of the extensions recognized by the _Solvate Suite_ (com/log [Gaussian], inp/out [ORCA], xyz/xtb [xTB], gro/pdb [GROMACS]). There are 5 scenarios in which this module can be used:

1. In the case of biomolecule PDB files, the program performs structure preparation (removal of heteroatoms and addition of hydrogens, without adjusting protonation based on pH, which may require additional preparations to be carried out by the user), followed by conversion to the GROMACS format (gro file) and creation of the force field parameters in a single file (itp).
2. In the case of force fields obtained by external servers (such as LigParGen and ATB) the module removes any residual charges, a necessary step for building simulation boxes that are, in fact, electrically neutral. This is done by homogeneously compensating for any residual charge between all atoms in the structure.
3. In the case of internally parameterized solvent molecules, the program selects the appropriate parameters and writes them to a force field file (itp), as well as converting the input file to the appropriate format (gro).
4. In the case of small molecules, the module sequentially executes the _q-Force_ program to generate parameters from a quantum chemical calculation.
5. If the input file matches that of the simulation box, the program combines the force field files into a single and independent topology file. This results in only two files for starting the simulation: the simulation box (gro) and the topology files (top, with all the force field parameters).

For examples, see:

* Example #1: [Preparing a protein PDB file](https://github.com/otaviolsantana/solvate/tree/main/tests/examples/1_GMDFF_Test01)
* Example #2: [Creating the Q-Force force field parameters](https://github.com/otaviolsantana/solvate/tree/main/tests/examples/1_GMDFF_Test02)
* Example #3: [Handling force field parameters from external servers](https://github.com/otaviolsantana/solvate/tree/main/tests/examples/1_GMDFF_Test03)
* Example #4: [Handling force field parameters from internal database](https://github.com/otaviolsantana/solvate/tree/main/tests/examples/1_GMDFF_Test04)
