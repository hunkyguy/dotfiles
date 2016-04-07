#!/usr/bin/env bash 

WORKDIR="$(dirname "${BASH_SOURCE:-$0}")";

cd $WORKDIR
WORKDIR=$PWD

for sf in $WORKDIR/.*; 
do 
    # if existed, rename and create symbol link
    bname=$(basename $sf)
    oname="$bname"_$(date +%Y%m%d%H%M%S)

    # files
    if [ ! -d $sf ]; then
        [[ -e ~/$bname ]] && mv -f ~/$bname ~/$oname
        ln -s $sf ~/$bname
    fi
    # directories
    if [[ $bname == ".vim" ]]; then
        [[ -e ~/$bname ]] && mv -f ~/$bname ~/$oname
        ln -s $sf ~/$bname
    fi
done
