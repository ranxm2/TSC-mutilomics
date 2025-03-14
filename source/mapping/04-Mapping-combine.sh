#!/bin/bash
#SBATCH --job-name=MAP-combine
#SBATCH --output=../log/MAP_combine_%A_out.txt
#SBATCH --error=../log/MAP_combine_%A_err.txt
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=24
#SBATCH --mem-per-cpu=6G
#SBATCH --time=7-00:00:00
#SBATCH --partition=week-long-cpu,month-long-cpu,encore,encore-gpu,largemem 
#SBATCH --mail-user=ximing.ran@emory.edu
#SBATCH --mail-type=START,END,FAIL


mkdir -p /projects/compbio/users/xran2/wen/TSC/01-Mapping/result/combine


cd /projects/compbio/users/xran2/wen/TSC/01-Mapping/result/combine


export PATH=$PATH:/projects/compbio/users/xran2/wen/TSC/01-Mapping/tool/cellranger-arc-2.0.2

cellranger-arc count    --id=scATAC_RNA_combine    \
                        --reference=../../tool/refdata-cellranger-arc-GRCh38-2020-A-2.0.0     \
                        --libraries=../combine_info.csv \
                        --localcores=24 \
                        --localmem=144