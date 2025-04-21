# **Configuration**

## Setting Up MD Simulations

In the **first stage**, the *Solvate Suite* provides optimized strategies for initial simulation box configuration. This includes creating or adjusting force field parameters and creating the initial simulation box for Molecular Dynamics (MD) simulations. The generation of molecular dynamics force fields is controled by GMDFF module, that generates force field parameters (`itp` files) and makes specific adjustments to the topology (`top` file) based on various input formats, such as files from *Gaussian*, *ORCA*, *xTB*, and *GROMACS*. The construction of the initial simulation box is performed by the PACKS module, through the iterative use of the *PackMol* program.

```{note}
Although the PACKS module manages the use of GMDFF, enabling the generation of force field parameters during the packing process, it is recommended to run the GMDFF module beforehand. Regardless, the PACKS module will verify the consistency of the parameters at the end of the packing procedure.
```

![image](images/stage1.png)
