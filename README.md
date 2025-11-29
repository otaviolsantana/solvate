<div align="center">
<img src="https://user-images.githubusercontent.com/69423088/253824433-a6b55273-b084-4283-a0b6-b8d40bc52890.png" width="250px"/>
</div>

# _**Solvate Suite**_

**OVERVIEW**

This is the repository for the _Solvate Suite_, a comprehensive software package designed to address various challenges in molecular modeling. The suite's modules interface with widely used open-source software such as _ORCA_, _xTB_, _GROMACS_, _PackMol_, and _Q-Force_, facilitating the sequential treatment of all stages of molecular modeling involving explicit interaction of the species of interest with the solvent, employing both molecular simulation procedures and electronic structure calculations in a hybrid approach (explicit/implicit solvation).

For more information about the program, visit the [Solvate Suite](https://otaviolsantana.github.io/solvate) homepage. For a comprehensive overview of the package's uses, see the [user manual](https://otaviolsantana.github.io/solvate/manual/index.html). To explore practical examples, check out the Zenodo repository:

- Part 1: [Molecular Simulation Integration](https://doi.org/10.5281/zenodo.8110727)
- Part 2: [Molecular Modeling of Microsolvation](https://doi.org/10.5281/zenodo.10073747)

**CHANGELOG**

* _Solvate Suite 2025.12_ (Coming soon...)
 
	- PACKS features inclusion for multiple initial configurations in a single input. (under development)
	- MDRUN features inclusion for running simulations with auto-equilibration. (under development)
	- MACRO submodule implementation for biomolecules treatment. (under development)
	- CONFS submodule implementation for automation of conformational analysis. (under development)
	- BONDS submodule implementation for automation of hydrogen bond search. (under development)
	- GSOLV submodule implementation for automation of solvation Gibbs Free energy. (under development)
 	- Bug fixes...

* _Solvate Suite 2025.07_
 
	- Inclusion of features in GMDFF for running Q-Force with user-customized parameters.
	- Inclusion of features in PACKS for simulations with multiple solute conformations.
	- Inclusion of features in GCALC for deleting clusters before and after optimization.
 	- Bug fixes...

* _Solvate Suite 2024.08_
 
	- Inclusion of parameters for simulation configuration through the MDPAR submodule.
	- Expansion of the list of parameterized solvents via SOLVS submodule.
	- Addition of SAC and SOC optimization procedures in the treatment of microsolvation.
	- Implementation of the search for similarities in the SOC procedure.
 	- RMSD cutoff estimate for the SOC procedure via the RMSDE submodule.
 	- Data extraction from SUMMY and SUPPY modules with concentration and temperature correction.
   	- Minimization of structural RMSD from files with multiple structures (trj.xyz).
  	- Microssolvation clusters extraction with reorientation of structures relative to the solute.
	- Integration of the MICRO, GCALC, and ONIOM modules via MSRUN to automate microsolvation.
 	- Bug fixes...

**CITATION**

If you use _Solvate Suite_, please cite:

	Solvate Suite: A Command-Line Interface for Molecular Simulations and Multiscale Microsolvation Modeling
 	Otávio L. Santana, Daniel G. Silva, Sidney R. Santana
	J. Chem. Inf. Model. 2024, 64, 9, 3767–3778

Link: [https://doi.org/10.1021/acs.jcim.3c01899]

**LICENSE**

SOLVATE is a free software: you can redistribute it under the terms of the BSD 3-Clause License. This software is provided by the copyright holders and contributors “as is”, and any express or implied warranties, including, but not limited to, the implied warranties of merchantability and fitness for a particular purpose, are disclaimed. In no event shall the copyright holder or contributors be liable for any direct, indirect, incidental, special, exemplary, or consequential damages (including, but not limited to, procurement of substitute goods or services; loss of use, data, or profits; or business interruption) however caused and on any theory of liability, whether in contract, strict liability, or tort (including negligence or otherwise) arising in any way out of the use of this software, even if advised of the possibility of such damage.

**LINKS**

PackMol: [https://m3g.github.io/packmol/download.shtml] | Q-Force: [https://qforce.readthedocs.io/en/latest/index.html] | xTB: [https://xtb-docs.readthedocs.io/en/latest/] | CREST: [https://crest-lab.github.io/crest-docs/] | ORCA: [https://orcaforum.kofo.mpg.de/app.php/portal] | GROMACS:  [https://www.gromacs.org] | JMol: [https://jmol.sourceforge.net/] | VMD: [https://www.ks.uiuc.edu/Research/vmd/]
