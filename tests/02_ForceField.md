<div align="center">
<img src="https://user-images.githubusercontent.com/69423088/253824433-a6b55273-b084-4283-a0b6-b8d40bc52890.png" width="250px"/>
</div>

# _**Solvate Suite**_

**GMDFF :: Generation of Force Fields for Molecular Dynamics Simulations**

	The GMDFF module mediates the creation of force field parameters (itp files), as well as making special adjustments for the construction of the topology (top file). It can be used using the command:
 
		gmdff input.ext
  
	where _ext_ is one of the extensions recognized by the solvate suite (com/log [Gaussian], inp/out [ORCA], xyz/xtb [xTB], gro/pdb [GROMACS]). In the case of force fields from external servers (such as LigParGen and ATB) this module removes any residual charges, enabling the construction of electrically neutral simulation boxes.
 
**LINKS**

PackMol: [https://m3g.github.io/packmol/download.shtml] | Q-Force: [https://qforce.readthedocs.io/en/latest/index.html] | xTB: [https://xtb-docs.readthedocs.io/en/latest/] | CREST: [https://crest-lab.github.io/crest-docs/] | ORCA: [https://orcaforum.kofo.mpg.de/app.php/portal] | GROMACS:  [https://www.gromacs.org] | JMol: [https://jmol.sourceforge.net/] | VMD: [https://www.ks.uiuc.edu/Research/vmd/]
