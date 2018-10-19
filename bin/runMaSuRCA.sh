#!/bin/bash

module load singularity
#change this variable to correspond to the directory you downloaded the git repository
export masurcagit="/work/GIF/severin/isugif/masurca/"
#export TMPDIR=$TMPDIR
#module load jellyfish

masurca sr_config.txt
./assemble.sh

