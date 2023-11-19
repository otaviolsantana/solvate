START

Quantum Mechanically augmented molecular force ﬁelds

Please see the Documentation. If you use Q-Force, please cite: Sami, S.;
Menger, M. F. S. J.; Faraji, S.; Broer, R.; Havenith, R. W. A., QForce:
Quantum Mechanically Augmented Molecular Force Fields. Journal of
Chemical Theory and Computation 2021, 17 (8), 4946-4960.

Docs » Method

Method

Q-Force ﬂowchart: gray: input, red: QM calculations, blue: fitting.

For the detailed methodology, please check the corresponding manuscript:
Sami, S.; Menger, M. F. S. J.; Faraji, S.; Broer, R.; Havenith, R. W.
A., QForce:Quantum Mechanically Augmented Molecular Force Fields.
Journal of ChemicalTheory and Computation 2021, 17 (8), 4946-4960.
\[link\]

Docs » Installation

Installation Make sure you have Python 3.7 or newer. If you can’t call
the qforce executable afterwards, make sure you have the python bin in
your PATH.

With pip: To install Q-Force with pip: pip install qforce If you work in
a shared environment, add –user.

From GitHub: To install Q-Force from GitHub: git clone
https://github.com/selimsami/qforce.git cd qforce python setup.py
install

From Binary: To install Q-Force from binary form: cd
\$HOME\_SOLVATE/nodes/qforce && ./qforce.install

From Source: To compile Q-Force from source form: 1. Install QFORCE and
PYINSTALLER from the pip repository: pip install qforce pip install
pyinstaller 2. Go to the QFORCE installation folder
(/home/\$USER/.local) and create the "hook-ase" and "hook-sip" folders.
----------ASE and SIP are libraries that are not found by default by the
PYINSTALLER packager. This information was obtained by analyzing line by
line of the debug. Inside these folders are simple Python scripts.
----------Script 1 hook-ase.py: from PyInstaller.utils.hooks import
collect\_all datas, binaries, hiddenimports = collect\_all('ase') Script
2 hook-sip.py: from PyInstaller.utils.hooks import collect\_all datas,
binaries, hiddenimports = collect\_all('sip') ----------3. Execute the
command: pyinstaller --onefile --additional-hooks-dir=hook-ase
--additional-hooks-dir=hook-sip --add-data
'/home/daniel/QF/qforce/qforce/data:qforce/data' --add-data
'/home/daniel/QF/qforce/qforce/molecule:qforce/molecule' --add-data
'/home/daniel/QF/qforce/qforce/qm:qforce/qm' --add-data
'/home/daniel/QF/qforce/qforce/tests:qforce/tests' qforce or simply:
pyinstaller qforce.spec ----------Explanation: The --onefile command
indicates that a single executable will be created,
--additional-hooks-dir indicates that the library is being included
manually, and --add-data indicates the inclusion of files that QFORCE
needs to function.

Docs » Usage

Usage Q-Force is run in multiple stages. These stages are explained
below. At each stage, an options ﬁle can be provided to change the
default settings with -o file\_name. Possible options are listed in
Options.

1)  Creating the initial QM input Let’s assume that we have a coordinate
    file called mol.ext for a molecule named mol. The extension (ext)
    can be anything that is supported by ASE (xyz, pdb, gro, …). Create
    the initial QM input (choosing the QM Software is described in
    Options) by running the following command: qforce mol.ext. This
    creates a directory called mol\_qforce. In it, you can ﬁnd
    mol\_hessian.inp. Run this calculation on a cluster or locally, and
    place the output(s) in the same directory.

Docs » Usage

Usage 2) Treating the ﬂexible dihedrals If your molecule contains
ﬂexible dihedrals and if the treatment of ﬂexible dihedrals are not
turned oﬀ, then fragments and the corresponding QM inputs are created
for all unique ﬂexible dihedrals inside the subdirectory fragments with:
qforce mol or qforce mol\_qforce or qforce mol.ext. Run these
calculations on a cluster or locally, and place the output in the same
subdirectory.

3)  Creating the force ﬁeld Now that all necessary QM results are
    available, the fitting of the force field is done with: qforce mol
    or qforce mol\_qforce or qforce mol.ext.

4)  Output Done! Q-Force generates several outputs: •

Force ﬁeld ﬁles in GROMACS format (.gro, .itp, .top);

•

Force field validation: ◦ QM vs MM vibrational frequencies
(frequencies.txt, frequencies.pdf); ◦ QM vs MM dihedral proﬁle(s) in the
fragments subdirectory (.pdf);

•

MM vibrational modes (frequencies.nmd) that can be visualized in VMD.

Docs » Examples

Examples Here are two examples of how Q-Force can be used: In default
settings and with some customization. For the purposes of these
examples, whenever you need an additional file, QM outputs or otherwise,
they are provided in the directory necessary\_files. First, please get
the example ﬁles by: git clone
https://github.com/selimsami/qforce\_examples.git

Default settings Creating the initial QM input Find in
examples/gaussian/default\_settings a coordinate file (propane.xyz) for
the propane molecule. Let’s first create the QM input file: qforce
propane.xyz This will create a propane\_qforce directory, and in it, you
will find the input file ‘propane\_hessian.inp’. Now run this QM
calculation and put the necessary output files (.out, .fchk) in the same
directory. (remember: the output files are available in
necessary\_files).

Treating the ﬂexible dihedrals Now we can run Q-Force again from the
same directory to create fragments and the corresponding QM dihedral
scan input ﬁles by: qforce propane This procedure will create all the
necessary input files in the subdirectory named
propane\_qforce/fragments. Then, run these calculations and put the
output file(s) (.out) in the same subdirectory.

Creating the force ﬁeld Now that all necessary QM data is available,
let’s create our force ﬁeld: qforce propane You can now find the Q-Force
force field files in the propane\_qforce directory.

Docs » Examples

Examples Custom settings Find in examples/gaussian/custom\_settings a
coordinate file (benzene.pdb) for the benzene molecule. In this example,
we look at some of the custom settings available with Q-Force and how
they can be executed. The custom settings are provided with an external
file with: qforce benzene.pdb -o settings Now let’s create the settings
file.

Custom Lennard-Jones interactions By default, Q-Force determines the
atom types for Lennard-Jones interactions automatically. Alternatively,
the user can also provide atom types manually, for a force field of
their choice. Here, we choose to use the GAFF force field by adding the
following line to the settings file: \[ff\] lennard\_jones = gaff With
this command, the user also has to provide the atom types manually in
the “benzene\_qforce” directory in a file called “ext\_lj”. In this
file, every line should contain the atom type of one atom in the same
order as the coordinate file.

Conversion to job script Often the QM calculations are needed to be
submitted as jobs in supercomputers. For large molecules Q-Force can
have a large number of QM dihedral scans that needs to be performed and
therefore it may be convenient to have input files converted to job
scripts. This can be done by adding the \[qm::job\_script\] block to the
settings file: \[qm::job\_script\] \#!/bin/bash \#SBATCH -o
<jobname>.out g16&lt;<EOF
<input> EOF Here we make a SLURM job script. Two placeholders that can
be used are <input> and <outfile>. <jobname> gets replaced by the name
of the calculation, for example in the case of the
“benzene\_hessian.inp”, it will be “benzene\_hessian.out”. <input> is
where the content of the QM input file will be placed.

Docs » Examples

Examples Creating the initial QM input Now that we know what these
settings do, let’s supply them to Q-Force: qforce benzene.pdb -o
settings Again, this will create a benzene\_qforce directory, and in it,
you will find the input “benzene\_hessian.inp”, this time as a job
script instead of an input file. Now run this QM calculation and put the
output file (.out) and the formatted checkpoint file (.fchk) in the same
directory.

Creating the force field As benzene does not have any flexible
dihedrals, the second step is skipped in this case. Make sure you have
also added this time the ext\_lj file in benzene\_qforce and then we can
already create the force field with: qforce benzene.pdb -o settings You
can now find the necessary force field files in the benzene\_qforce
directory. As you will notice, in this case GAFF atom types are used.

Choosing the QM software The default QM software is Gaussian. If the
user wants to use another QM software (current alternatives: Q-Chem,
ORCA, and xTB), this can be indicated in the same settings file: \[qm\]
software = qchem An example for running Q-Force with Q-Chem can be found
in the examples/qchem/default\_settings directory. This works in the
same way as the first example, except the additional argument for
choosing the QM software, as shown above.

Docs » Options

Options \[ff\] n\_equiv, int: default: 4 Number of n equivalent
neighbors needed to consider two atoms equivalent. Negative values turns
off equivalence, 0 makes same elements equivalent. n\_excl, int:
default: 2, from Choices(2, 3) Number of first n neighbors to exclude in
the forcefield. lennard\_jones, str: default: opls\_auto, from
Choices(gromos\_auto, gromos, opls\_auto, opls, gaff, gaff2, charmm36,
ext) Lennard jones method for the forcefield. ext\_charges, bool:
default: False, from Choices(True, False) Use externally provided point
charges in the file “ext\_q” in the job directyory. charge\_scaling,
float: default: 1.2 Scale QM charges to account for condensed phase
polarization (should be set to 1 for gas phase).
use\_ext\_charges\_for\_frags, bool: default: False, from Choices(True,
False) If user chooses ext\_charges=True, by default fragments will
still use the chosen QM method for determining fragment charges. This is
to avoid spuriously high charges on capping hydrogens. However, using QM
charges for fragments and ext\_charges for the molecule can also result
in inaccuracies if these two charges are very different. ff::exclusions,
LiteralBlock Additional exclusions (GROMACS format). ff::pairs,
LiteralBlock Switch standard non-bonded interactions between two atoms
to pair interactions (provide atom pairs in each row).

Docs » Options

Options \[ff\] ext\_lj\_lib, folder: Path for the external FF library
for Lennard-Jones parameters (GROMACS format). ext\_lj\_fudge, float:
Lennard-Jones fudge parameter “lennard\_jones” is set to “ext”.

for

1-4

interactions

for

when

ext\_q\_fudge, float: Coulomb fudge parameter for 1-4 interactions for
when “lennard\_jones” is set to “ext”. ext\_comb\_rule, int: Choices(1,
2, 3) Lennard-Jones combinations rules “lennard\_jones” is set to “ext”
(GROMACS numbering).

for

when

ext\_h\_cap, str: Name of the atom type for capping hydrogens for when
“lennard\_jones” is set to “ext”. all\_rigid, bool: default: False, from
Choices(True, False) Set all dihedrals as rigid (no dihedral scans).
res\_name, str: default: MOL Residue name printed on the force field
file (Max 5 characters). ff::\_polar\_not\_scale\_c6, LiteralBlock
Specifically not scale some of the atoms.

Docs » Options

Options \[qm\] software, str: default: gaussian, from Choices(gaussian,
qchem, orca, xtb) QM software to use. qm::job\_script, LiteralBlock To
turn the QM input files into job scripts. scan\_step\_size, float:
default: 15.0 Step size for the dihedral scan (360 should be divisible
by this number ideally). charge, int: default: 0 Total charge of the
system. multiplicity, int: default: 1 Multiplicity of the system.
memory, int: default: 4000 Allocated memory for the QM calculation (in
MB). n\_proc, int: default: 1 Number of processors to set for the QM
calculation. vib\_scaling, float: default: 1.0 Scaling of the
vibrational frequency for the corresponding QM method (not implemented).
dihedral\_scanner, str: default: relaxed\_scan, from
Choices(relaxed\_scan, xtb-torsiondrive) Use the internal relaxed scan
method of the QM software or the Torsiondrive method using xTB.

Docs » Options

Options \[qm::software(gaussian)\] charge\_method, str: default: cm5,
from Choices(cm5, esp). method, str: default: PBEPBE QM method to be
used. dispersion, str: default: EmpiricalDispersion=GD3BJ Dispersion
method - leave it empty to turn off. basis, str: default: 6-31+G(D) QM
basis set to be used - leave it empty to turn off. solvent\_method, str:
Include implicit solvent for the complete parametrization.

Docs » Options

Options \[qm::software(qchem)\] charge\_method, str: default: cm5, from
Choices(cm5, resp). method, str: default: PBE QM method to be used.
dispersion, str: default: d3\_bj, from Choices(d3, d3\_bj, d3\_bjm,
d3\_zero, d3\_op, empirical\_grimme). Dispersion (enter "no"/"false" to
turn off). basis, str: default: 6-31+G(D) QM basis set to be used (enter
"no"/"false" to turn off). max\_scf\_cycles, int: default: 100 Number of
maximum SCF cycles. max\_opt\_cycles, int: default: 100 Number of
maximum optimization cycles. xc\_grid, int: default: 3, from Choices(0,
1, 2, 3) DFT Quadrature grid size. cis\_n\_roots, int: Number of CIS
roots to ask. cis\_singlets, bool: Choices(True, False) CIS singlets
turned on or off. cis\_triplets, bool: Choices(True, False) CIS triplets
turned on or off. cis\_state\_deriv, int: Sets CIS state for excited
state optimizations and vibrational analysis. solvent\_method, str:
Include implicit solvent for the complete parametrization.

Docs » Options

Options \[qm::software(orca)\] charge\_method, str: default: esp, from
Choices(cm5, esp). qm\_method\_opt, str: default: r2SCAN-3c QM method to
be used for geometry optimization. qm\_method\_hessian, str: default:
B3LYP D4 def2-TZVP def2/J RIJCOSX QM method to be used for hessian
calculation Note: The accuracy of this method determines the accuracy of
bond, angle and improper dihedral. qm\_method\_charge, str: default: HF
6-31G\* QM method to be used for charge derivation Note: Method chosen
according to the standard RESP procedure. qm\_method\_sp, str: default:
PWPB95 D4 def2-TZVPP def2/J def2-TZVPP/C NoTrah RIJCOSX TightSCF QM
method to be used for dihedral scan energy calculation. Note: The
accuracy of this method determines the accuracy of flexible dihedral.

Docs » Options

Options \[qm::software(xtb)\] charge\_method, str: default: xtb xTB only
allows Mulliken charge. xtb\_command, str: default: --gfn 2 Extra
command line passed to the xTB executable.

Docs » License

License APACHE LICENSE Version 2.0, January 2004
http://www.apache.org/licenses/ TERMS AND CONDITIONS FOR USE,
REPRODUCTION, AND DISTRIBUTION 1. Definitions. "License" shall mean the
terms and conditions for use, reproduction, and distribution as defined
by Sections 1 through 9 of this document. "Licensor" shall mean the
copyright owner or entity authorized by the copyright owner that is
granting the License. "Legal Entity" shall mean the union of the acting
entity and all other entities that control, are controlled by, or are
under common control with that entity. For the purposes of this
definition, "control" means (i) the power, direct or indirect, to cause
the direction or management of such entity, whether by contract or
otherwise, or (ii) ownership of fifty percent (50%) or more of the
outstanding shares, or (iii) beneficial ownership of such entity. "You"
(or "Your") shall mean an individual or Legal Entity exercising
permissions granted by this License. "Source" form shall mean the
preferred form for making modifications, including but not limited to
software source code, documentation source, and configuration files.
"Object" form shall mean any form resulting from mechanical
transformation or translation of a Source form, including but not
limited to compiled object code, generated documentation, and
conversions to other media types. "Work" shall mean the work of
authorship, whether in Source or Object form, made available under the
License, as indicated by a copyright notice that is included in or
attached to the work (an example is provided in the Appendix below).
"Derivative Works" shall mean any work, whether in Source or Object
form, that is based on (or derived from) the Work and for which the
editorial revisions, annotations, elaborations, or other modifications
represent, as a whole, an original work of authorship. For the purposes
of this License, Derivative Works shall not include works that remain
separable from, or merely link (or bind by name) to the interfaces of,
the Work and Derivative Works thereof. "Contribution" shall mean any
work of authorship, including the original version of the Work and any
modifications or additions to that Work or Derivative Works

thereof, that is intentionally submitted to Licensor for inclusion in
the Work by the copyright owner or by an individual or Legal Entity
authorized to submit on behalf of the copyright owner. For the purposes
of this definition, "submitted" means any form of electronic, verbal, or
written communication sent to the Licensor or its representatives,
including but not limited to communication on electronic mailing lists,
source code control systems, and issue tracking systems that are managed
by, or on behalf of, the Licensor for the purpose of discussing and
improving the Work, but excluding communication that is conspicuously
marked or otherwise designated in writing by the copyright owner as "Not
a Contribution." "Contributor" shall mean Licensor and any individual or
Legal Entity on behalf of whom a Contribution has been received by
Licensor and subsequently incorporated within the Work. 2. Grant of
Copyright License. Subject to the terms and conditions of this License,
each Contributor hereby grants to You a perpetual, worldwide,
non-exclusive, no-charge, royalty-free, irrevocable copyright license to
reproduce, prepare Derivative Works of, publicly display, publicly
perform, sublicense, and distribute the Work and such Derivative Works
in Source or Object form. 3. Grant of Patent License. Subject to the
terms and conditions of this License, each Contributor hereby grants to
You a perpetual, worldwide, non-exclusive, no-charge, royalty-free,
irrevocable (except as stated in this section) patent license to make,
have made, use, offer to sell, sell, import, and otherwise transfer the
Work, where such license applies only to those patent claims licensable
by such Contributor that are necessarily infringed by their
Contribution(s) alone or by combination of their Contribution(s) with
the Work to which such Contribution(s) was submitted. If You institute
patent litigation against any entity (including a crossclaim or
counterclaim in a lawsuit) alleging that the Work or a Contribution
incorporated within the Work constitutes direct or contributory patent
infringement, then any patent licenses granted to You under this License
for that Work shall terminate as of the date such litigation is filed.
4. Redistribution. You may reproduce and distribute copies of the Work
or Derivative Works thereof in any medium, with or without
modifications, and in Source or Object form, provided that You meet the
following conditions: • • •

You must give any other recipients of the Work or Derivative Works a
copy of this License; and You must cause any modified files to carry
prominent notices stating that You changed the files; and You must
retain, in the Source form of any Derivative Works that You distribute,
all copyright, patent, trademark, and attribution notices from the
Source form of the Work, excluding those notices that do not pertain to
any part of the Derivative Works; and

•

If the Work includes a "NOTICE" text file as part of its distribution,
then any Derivative Works that You distribute must include a readable
copy of the attribution notices contained within such NOTICE file,
excluding those notices that do not pertain to any part of the
Derivative Works, in at least one of the following places: within a
NOTICE text file distributed as part of the Derivative Works; within the
Source form or documentation, if provided along with the Derivative
Works; or, within a display generated by the Derivative Works, if and
wherever such third-party notices normally appear. The contents of the
NOTICE file are for informational purposes only and do not modify the
License. You may add Your own attribution notices within Derivative
Works that You distribute, alongside or as an addendum to the NOTICE
text from the Work, provided that such additional attribution notices
cannot be construed as modifying the License.

You may add Your own copyright statement to Your modifications and may
provide additional or different license terms and conditions for use,
reproduction, or distribution of Your modifications, or for any such
Derivative Works as a whole, provided Your use, reproduction, and
distribution of the Work otherwise complies with the conditions stated
in this License. 5. Submission of Contributions. Unless You explicitly
state otherwise, any Contribution intentionally submitted for inclusion
in the Work by You to the Licensor shall be under the terms and
conditions of this License, without any additional terms or conditions.
Notwithstanding the above, nothing herein shall supersede or modify the
terms of any separate license agreement you may have executed with
Licensor regarding such Contributions. 6. Trademarks. This License does
not grant permission to use the trade names, trademarks, service marks,
or product names of the Licensor, except as required for reasonable and
customary use in describing the origin of the Work and reproducing the
content of the NOTICE file. 7. Disclaimer of Warranty. Unless required
by applicable law or agreed to in writing, Licensor provides the Work
(and each Contributor provides its Contributions) on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied,
including, without limitation, any warranties or conditions of TITLE,
NON-INFRINGEMENT, MERCHANTABILITY, or FITNESS FOR A PARTICULAR PURPOSE.
You are solely responsible for determining the appropriateness of using
or redistributing the Work and assume any risks associated with Your
exercise of permissions under this License.

8. Limitation of Liability. In no event and under no legal theory,
whether in tort (including negligence), contract, or otherwise, unless
required by applicable law (such as deliberate and grossly negligent
acts) or agreed to in writing, shall any Contributor be liable to You
for damages, including any direct, indirect, special, incidental, or
consequential damages of any character arising as a result of this
License or out of the use or inability to use the Work (including but
not limited to damages for loss of goodwill, work stoppage, computer
failure or malfunction, or any and all other commercial damages or
losses), even if such Contributor has been advised of the possibility of
such damages. 9. Accepting Warranty or Additional Liability. While
redistributing the Work or Derivative Works thereof, You may choose to
offer, and charge a fee for, acceptance of support, warranty, indemnity,
or other liability obligations and/or rights consistent with this
License. However, in accepting such obligations, You may act only on
Your own behalf and on Your sole responsibility, not on behalf of any
other Contributor, and only if You agree to indemnify, defend, and hold
each Contributor harmless for any liability incurred by, or claims
asserted against, such Contributor by reason of your accepting any such
warranty or additional liability. END OF TERMS AND CONDITIONS


