#!/bin/bash
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=24 
#SBATCH --cpus-per-task=1
#SBATCH --partition=normal_q
#SBATCH --time=2-00:00:00
#SBATCH --account=apple_rootstock-scion

module reset
module load MrBayes/3.2.7-gompi-2020b
cd $SLURM_SUBMIT_DIR

mpirun mb IAAmult_mb.txt

echo "job completed"
