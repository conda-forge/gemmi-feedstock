commit a0e7b1d894f7439bde45e3850264425e74ebc67c (HEAD)
Author: Markus Gerstel <markus.gerstel@diamond.ac.uk>
Date:   2020-07-23 12:32:56 +0100

    Disable compilation of gemmi library in setup.py
    
    The compilation is done via cmake. Remove the compilation step so that
    we can then install the gemmi package via pip.

diff --git a/setup.py b/setup.py
index 4461e8b..54ad114 100644
--- a/setup.py
+++ b/setup.py
@@ -144,13 +144,10 @@ setup(
     For working with coordinate files (mmCIF, PDB, mmJSON),
     refinement restraints (monomer library), electron density maps
     and crystallographic reflections.''',
-    libraries=build_libs,
-    ext_modules=ext_modules,
     packages=['gemmi-examples'],
     package_dir={'gemmi-examples': 'examples'},
     install_requires=['pybind11>=' + MIN_PYBIND_VER],
     setup_requires=['pybind11>=' + MIN_PYBIND_VER],
-    cmdclass={'build_ext': BuildExt},
     zip_safe=False,
     license='MPL-2.0',
     keywords=('structural bioinformatics, structural biology, crystallography,'
