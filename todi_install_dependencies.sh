#!/bin/bash -l 
set -e -x

# core dependencies
source ./todi_env.sh



# Default branches if not provided
icon_branch="gh_atmcirc"
icon4py_branch="v0.0.11"
gt4py_branch="icon4py_20240521"
gridtools_branch="v2.3.4"

while [ "$1" != "" ]; do
    case $1 in
        --icon )       shift
                       icon_branch=$1
                       ;;
        --icon4py )    shift
                       icon4py_branch=$1
                       ;;
        --gt4py )      shift
                       gt4py_branch=$1
                       ;;
        --gridtools )  shift
                       gridtools_branch=$1
                       ;;
        * )            echo "Invalid option"
                       exit 1
    esac
    shift
done



# Clone with specific branches

git clone -b $icon_branch git@github.com:C2SM/icon-exclaim.git
git clone -b $icon4py_branch git@github.com:C2SM/icon4py.git
git clone -b $gt4py_branch https://github.com/GridTools/gt4py.git
git clone -b $gridtools_branch https://github.com/GridTools/gridtools.git



pushd icon4py
    python3.10 -m venv .venv
    source .venv/bin/activate
    pip install --upgrade wheel
    pip install --upgrade pip
    pip install -r requirements.txt
popd

deactivate

