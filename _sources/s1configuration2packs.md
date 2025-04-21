# **PACKS**

## Simulation Box Creation

The PACKS module mediates the creation of the simulation box, through the iterative use of the PackMol program. It can be used from the command:

> packs file1.ext file2.ext {...} ⟨-options⟩

where *ext* is one of the extensions recognized by Solvate Suite (com/log [Gaussian], inp/out [ORCA], xyz/xtb [xTB], gro/pdb [GROMACS]), fileN the files with the structures of the solute and solvent molecules, and “-options” a set of options for the configuration of the box to be created.

```{note}
Simply type `packs` in the terminal and press Enter to see the full list of execution options for the module.
```

## Execution Options

> packs ⟨solute⟩ {⟨solvent⟩} ⟨-options⟩

     ⟨solute⟩ = File with solute  geometry (.com/log/inp/out/xyz/xtb/gro/pdb)
    ⟨solvent⟩ = File with solvent geometry (.com/log/inp/out/xyz/xtb/gro/pdb)

      -------------------------------------------------------------------------------------------------
         Nmol = Number of solvent molecules in the packing step.           [Default: 0][=Determine]    [-nm]
         Npck = Number of packing layers.                                  [Default: 2]                [-np]
         dCel = Dimensions of the simulation cell (in nanometers).         [Default: Not defined]      [-dc]
         gCel = Gap between solute and cell edges (in nanometers).         [Default: Not defined]      [-dg]
         bCon = Molal concentration of the simulation cell (in mol·kg⁻¹).  [Default: Not defined]      [-bc]
         cCon = Molar concentration of the simulation cell (in mol·L⁻¹).   [Default: Not defined]      [-cc]
         Prop = Proportion between solvent molecules. [N1:N2:...]          [Default: Not defined]      [-pr]
         Dens = Density of the simulation cell (in g·mL⁻¹).                [Default: 1.0]              [-ds]⁽*⁾
         cIon = File with counterion to be added for charge neutrality.    [Default: None]             [-ci]
        Shape = Packaging format (sphere|cube|box).                        [Default: Sphere/Cube]      [-sp]
       Tolera = Minimum distance tolerated in packing (in Å).              [Default: Not defined]      [-to]
       Repack : Resubmit the packing procedure with new parameters.        [Default: No]               [-rp]
        Force : Run in forced mode (no warning messages).                  [Default: No]               [-fm]
       Normal : Run in normal mode (normal packing configuration).         [Default: No]               [-cv]
       Iterat : Run in iterative mode (to adjust tolerance).               [Default: No]               [-it]
      Include : Insert external force field into generated topologie.      [Default: No]               [-in]⁽†⁾
       FField = Force field parameters.      [OPL|GRO|CHM|AMB|LPG|QFC|ATB] [Default: OPLS/AA]          [-ff]⁽†⁾
       Backup : Save original input files.                                 [Default: No]               [-bk]
      Solvent = Solvent to be used in C-PCM/ALPB solvation model.          [Default: Auto]             [-sv]
         List : Lists the set of solvents in the database.                 [Default: No]               [-ls]
        Check : Checks the consistency of simulation box settings.         [Default: No]               [-ck]
      -------------------------------------------------------------------------------------------------
      ⁽*⁾ Configurable options in automated mode. ⁽†⁾ GROMACS only

## Quickstart Examples

For examples, see:

- Example #1: [Creating a box for ORCA with a solute and water molecules](https://github.com/otaviolsantana/solvate/tree/main/tests/examples/2_PACKS_Test01 "Example #1 with ORCA program")
- Example #2: [Creating a box for ORCA with a solute and solvent mixture](https://github.com/otaviolsantana/solvate/tree/main/tests/examples/2_PACKS_Test02 "Example #2 with ORCA program")
- Example #3: [Creating a box for GROMACS with a solute and water molecules](https://github.com/otaviolsantana/solvate/tree/main/tests/examples/2_PACKS_Test03 "Example #3 with GROMACS program")
- Example #4: [Creating a box for GROMACS with a solute and a solvent mixture](https://github.com/otaviolsantana/solvate/tree/main/tests/examples/2_PACKS_Test04 "Example #4 with GROMACS program")
