# _**Solvate Suite**_

**GMDFF :: Generation of Molecular Dynamics Force Fields**

The GMDFF module mediates the creation of force field parameters (itp files), as well as making special adjustments for the construction of the topology (top file). It can be used using the command:
 
	gmdff input.ext
  
where _ext_ is one of the extensions recognized by the _Solvate Suite_ (com/log [Gaussian], inp/out [ORCA], xyz/xtb [xTB], gro/pdb [GROMACS]). In the case of force fields from external servers (such as LigParGen and ATB) this module removes any residual charges, enabling the construction of electrically neutral simulation boxes.
