#!/bin/bash
#SBATCH --job-name=scATAC-test
#SBATCH --output=../log/scATAC_test_%A_out.txt
#SBATCH --error=../log/scATAC_test_%A_err.txt
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=16
#SBATCH --mem-per-cpu=4G
#SBATCH --time=48:00:00
#SBATCH --partition=week-long-cpu,month-long-cpu,encore,encore-gpu
#SBATCH --mail-user=ximing.ran@emory.edu
#SBATCH --mail-type=END,FAIL


export PATH=$PATH:/projects/compbio/users/xran2/wen/TSC/01-Mapping/tool/cellranger-atac-2.1.0

cd /projects/compbio/users/xran2/wen/TSC/01-Mapping/tool/
cellranger-atac testrun --id=tiny 


