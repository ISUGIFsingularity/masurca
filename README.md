# Singularity container recipe and run script for the MaSuRCA assembler

### Clone this repository

```
mkdir isugif
cd isugif
git clone git@github.com:ISUGIFsingularity/masurca.git
```

### Place singularity container into SIMG folder inside this repo

You can pull the singularity image using these commands

```
cd masurca
mkdir SIMG
cd SIMG
singularity pull shub://ISUGIFsingularity/masurca:3.2.9
ln -s ISUGIFsingularity-masurca-master-3.2.9.simg  ISUGIFsingularity-masurca-master.simg
```

### Add Alias and PATH

Place the following into your .bashrc folder for container use

```
#make sure you are in the masurca folder that corresponds to the Path2thisRepo
export masurcagit=`pwd`
export PATH=$PATH:$masurcagit/wrappers
```

Place the following into your .bashrc folder to use scripts without container (preferred method unless testing container functions)

```
alias masurcagit=Path2thisRepo
export PATH=$PATH:$masurcagit/masurca
```


### Notes

For this to function properly had to add ```--bind $masurcagit:/mnt``` to the wrappers

Example

```
 singularity exec --bind $masurcagit:/mnt --bind $PWD $masurcagit/SIMG/ISUGIFsingularity-masurca-master.simg /mnt/masurca/summary.sh
```
