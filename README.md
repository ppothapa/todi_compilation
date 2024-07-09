###    Steps for Compilation of ICON on Todi super computer (Praveen K Pothapakula)

#  Step - 1
### You can check various images installed in todi for icon-exclaim compilation with the following command

#### a)   uenv image find icon-wcp
#### b)   The uenv lists all the images installed
#### c)   For this installation we use icon-wcp/v1:rc1 (you can also try other environments if you want to try)
#### d)   type the command //     uenv image inspect icon-wcp/v1:rc1 and check for "sqfs" path
#### e)   Load the sqfs environment with the following command (uenv start /capstor/scratch/cscs/XXXX/.uenv-images/images/fd7e133e83d8dca2867213ea2087918c42d20076566aae887c110258c5b5f64d/store.squashfs)  
#### f)   Now your environment should be loaded. 


# Step -2
###  For installation you need the following shell scripts (a)  todi_env.sh, (b)  todi_install_dependencies.sh (c) setup_todi.sh (d) todi_nospack.dsl.nvidia_PPK  

####  Copy the shell scripts into a folder where you want your icon to be compiled.  
####  a) ./todi_install_dependencies.sh       (installs all the dependencies used for compiling icon-exclaim, git clones icon-exclaim into the folder and updates all the submodules.)
####  b)  copy todi_nospack.dsl.nvidia_PPK into the "icon-exclaim/config/cscs/" folder. (This is a configuration script for icon)
####  c) ./setup_todi.sh                 (Starts configuring and installing icon in "build_dsl" folder)
####  d) Check if your "build_dsl/bin" has icon executable  
