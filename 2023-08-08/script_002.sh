#!/usr/bin/env bash
#SBATCH --job-name=script_002
#SBATCH --ntasks=300  # number of tasks running at the same time
#SBATCH --cpus-per-task=1
#SBATCH --mem-per-cpu=2G
#SBATCH --time=1:00:00  # one hour
#SBATCH --partition=cluster

num_tasks=$1

for ntask in $(seq ${num_tasks}); do
	srun --ntasks 1 --exclusive bash script_003.sh ${ntask} 2 &
done
wait

jobinfo
