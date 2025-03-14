#!/bin/bash
#SBATCH --job-name=MAP-3
#SBATCH --output=../log/MAP_CTRL_%A_out.txt
#SBATCH --error=../log/MAP_CTRL_%A_err.txt
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=16
#SBATCH --mem-per-cpu=4G
#SBATCH --time=48:00:00
#SBATCH --partition=week-long-cpu,month-long-cpu,encore,encore-gpu,day-long-cpu,largemem 
#SBATCH --mail-user=ximing.ran@emory.edu
#SBATCH --mail-type=START,END,FAIL


mkdir -p /projects/compbio/users/xran2/wen/TSC/01-Mapping/result/TSC-edge


cd /projects/compbio/users/xran2/wen/TSC/01-Mapping/result/TSC-edge


export PATH=$PATH:/projects/compbio/users/xran2/wen/TSC/01-Mapping/tool/cellranger-arc-2.0.2

cellranger-arc count    --id=scATAC_RNA_TSC-edge     \
                        --reference=../../tool/refdata-cellranger-arc-GRCh38-2020-A-2.0.0     \
                        --libraries=../TSC-edge_info.csv \
                        --localcores=16 \
                        --localmem=90