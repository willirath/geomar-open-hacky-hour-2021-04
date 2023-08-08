#!/bin/bash
#SBATCH --job-name=script_001
#SBATCH --mem=2G
#SBATCH --time=96:00:00  # one hour
#SBATCH --partition=cluster

# pre-processing

# submit a parallel job (maybe with arguments)
date -Is
sbatch --wait script_002.sh 1000
date -Is

# post-processing


jobinfo
