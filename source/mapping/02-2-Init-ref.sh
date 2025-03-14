#!/bin/bash
#SBATCH --job-name=Init
#SBATCH --output=../log/init_ref_%A_out.txt
#SBATCH --error=../log/init_ref_%A_err.txt
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=16
#SBATCH --mem-per-cpu=4G
#SBATCH --time=48:00:00
#SBATCH --partition=week-long-cpu,month-long-cpu,encore,encore-gpu,day-long-cpu,largemem 
#SBATCH --mail-user=ximing.ran@emory.edu
#SBATCH --mail-type=START,END,FAIL



cd /projects/compbio/users/xran2/wen/TSC/01-Mapping/tool


# Install Human reference data
tar -xzvf refdata-cellranger-arc-GRCh38-2020-A-2.0.0.tar.gz 
