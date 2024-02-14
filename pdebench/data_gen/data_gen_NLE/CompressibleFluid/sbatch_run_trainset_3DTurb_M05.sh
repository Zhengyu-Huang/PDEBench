#!/bin/bash

#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1  
#SBATCH -t 96:00:00

key=${1}
nkeys=${2}
nn=1
while [ $nn -le $nkeys ]; do
  python3 CFD_Hydra.py +args=3D_TurbM05_64.yaml ++args.save="../save/CFD/${key}/" ++args.init_key=$key
  nn=$(expr $nn + 1)
  key=$(expr $key + 1)
  echo "$nn"
  echo "$key"
done