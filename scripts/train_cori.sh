#!/bin/bash
#SBATCH -N 1
#SBATCH -C haswell
#SBATCH -q regular
#SBATCH -J climate_gpu
#SBATCH --mail-user=bernardusclair@gmail.com
#SBATCH --mail-type=ALL
#SBATCH -t 00:30:00

#OpenMP settings:
export OMP_NUM_THREADS=1
export OMP_PLACES=threads
export OMP_PROC_BIND=spread


#run the application:
srun -n 1 -c 64 --cpu_bind=cores climate_songhune.x
