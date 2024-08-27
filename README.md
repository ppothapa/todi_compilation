###    Steps for Compilation of ICON on Todi super computer (Praveen K Pothapakula)

#  Step - 1
#
# This build is specific to "icon-wcp/v1:rc4" , if you want other rc builds, You can check various images installed in todi for icon-exclaim compilation with the following command
# a)   uenv start icon-wcp/v1:rc4 --view=icon
# b)   Now your environment should be loaded. 


# Step -2
# For installation you need the following shell scripts (a)  todi_env.sh, (b)  todi_install_dependencies.sh (c) setup_todi.sh (d) todi_nospack.dsl.nvidia_PPK  
#
#  a) ./todi_install_dependencies.sh       (installs all the dependencies used for compiling icon-exclaim, git clones icon-exclaim into the folder and updates all the submodules.)
#  b) ./setup_todi.sh                 (Starts configuring and installing icon in "build_dsl" folder)
#  c) Check if your "build_dsl/bin" has icon executable  
