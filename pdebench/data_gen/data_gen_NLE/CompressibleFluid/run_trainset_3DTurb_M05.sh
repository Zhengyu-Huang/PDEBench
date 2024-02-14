#!/bin/sh

nkeys=200

key=2001
nn=1
while [ $nn -le 6 ]; do

  scommand="sbatch --job-name=M05_${key}_${nkeys} --output=M05_${key}_${nkeys}.log sbatch_run_trainset_3DTurb_M05.sh $key $nkeys"               
  echo "submit command: $scommand"                  
  $scommand

  

  echo "$nn"
  echo "$key"

  key=$(expr $key + $nkeys)
  nn=$(expr $nn + 1)
done
