# **GMDFF**

## Molecular Dynamics Force Fields

The GMDFF module mediates the creation of force field parameters (`itp` files), as well as making special adjustments for the construction of the topology (`top` file). It can be used using the command:

> gmdff input.ext

where *ext* is one of the extensions recognized by the *Solvate Suite* (com/log [Gaussian], inp/out [ORCA], xyz/xtb [xTB], gro/pdb [GROMACS]).

```{note}
Simply type `gmdff` in the terminal and press Enter to see the full list of execution options for the module.
```

There are 4 scenarios in which this module can be used:

- In the case of biomolecule PDB files, the program performs structure preparation (removal of heteroatoms and addition of hydrogens, without adjusting protonation based on pH, which may require additional preparations to be carried out by the user), followed by conversion to the GROMACS format (gro file) and creation of the force field parameters in a single file (itp).
- In the case of force fields obtained by external servers (such as LigParGen and ATB) the module removes any residual charges, a necessary step for building simulation boxes that are, in fact, electrically neutral. This is done by homogeneously compensating for any residual charge between all atoms in the structure.
- In the case of internally parameterized solvent molecules, the program selects the appropriate parameters and writes them to a force field file (itp), as well as converting the input file to the appropriate format (gro).
- In the case of small molecules, the module sequentially executes the q-Force program to generate parameters from a quantum chemical calculation.

If the input file matches that of the simulation box, the program combines the force field files into a single and independent topology file. This results in only two files for starting the simulation: the simulation box (gro) and the topology files (top, with all the force field parameters).

## Execution Options

> gmdff ⟨molecule.ext⟩ ⟨-options⟩

      -------------------------------------------------------------------------------------------------
         .ext = Input file extension (.com/log/inp/out/xyz/xtb/pdb/gro)
              + ----------------------------------------------------------
        -labs = Labels of individual molecular fragments.    [LAB:RES:FRG] [Default: Not defined]      [-lb]
        -type = Type of residue.                             [SLT|SVT|CNT] [Default: Solute]           [-tp]
        -cpcm = Solvent CPCM model.                                        [Default: None]             [-sv]
        -nods = No dihedral scans.                                         [Default: Execute]          [-ns]
        -list : Provides the complete list of parameterized solvents.      [Default: No]               [-ls]
              + ----------------------------------------------------------
       -field = Force field parameters.      [OPL|GRO|CHM|AMB|LPG|QFC|ATB] [Default: OPLS/AA]          [-ff]
       -water = Model (conditional).         [SPC|SPCE||TIP3P|TIP4P|TIP5P] [Default: SPC/E]            [-wm]
       -inext : Insert external force field into generated topologie.      [Default: No]               [-in]
       -lists : Lists the set of solvents in the database.                 [Default: No]               [-ls]
       -local : Run in a local mode (QForce only).                         [Default: No]               [-lc]
       -backp : Save original input files.                                 [Default: No]               [-bk]
              + ----------------------------------------------------------
        -proc = Number of processors to be used.                           [Default: 4]                [-pc]
        -nmem = Amount of memory in GB to be used.                         [Default: 8]                [-me]

## Quickstart Examples

For examples, see:

- Example #1: [Preparing a protein PDB file](https://github.com/otaviolsantana/solvate/tree/main/tests/examples/1_GMDFF_Test01 "Example #1 with a protein PDB file")
- Example #2: [Creating the Q-Force force field parameters](https://github.com/otaviolsantana/solvate/tree/main/tests/examples/1_GMDFF_Test02 "Example #2 of creating force field parameters")
- Example #3: [Handling force field parameters from external servers](https://github.com/otaviolsantana/solvate/tree/main/tests/examples/1_GMDFF_Test03 "Example #3 of handling force field parameters from external servers")
- Example #4: [Handling force field parameters from internal database](https://github.com/otaviolsantana/solvate/tree/main/tests/examples/1_GMDFF_Test04 "Example #4 of handling force field parameters from internal database")
