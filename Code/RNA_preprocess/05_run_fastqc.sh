#!/bin/bash -l
#SBATCH -A uppmax2022-2-5
#SBATCH --reservation=uppmax2022-2-5_3
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 01:00:00
#SBATCH -J Paper2RNApreprocess
#SBATCH --mail-type=ALL
#SBATCH --mail-user alma.hansen.3759@student.uu.se
# Load modules
module load bioinfo-tools
module load FastQC
# Your commands
fastqc -o /home/almal/GenomeAnalysis_Alma/RNA_preprocess/FastQCposttrim --noextract -f fastq /home/almal/GenomeAnalysis_Alma/RNA_preprocess/*.fastq.gz