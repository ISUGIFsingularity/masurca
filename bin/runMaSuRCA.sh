#!/bin/bash

module load singularity
#change this variable to correspond to the directory you downloaded the git repository
export masurcagit="/work/GIF/severin/isugif/masurca/"
export PATH=$masurcagit/wrappers/:$PATH 

#export TMPDIR=$TMPDIR
#module load jellyfish

MASURCA masurca sr_config.txt
MASURCA ./assemble.sh

