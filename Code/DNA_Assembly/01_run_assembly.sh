#!/bin/bash -l
#SBATCH -A uppmax2022-2-5
#SBATCH --reservation=uppmax2022-2-5_2
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 15:00:00
#SBATCH -J Paper2Assembly
#SBATCH --mail-type=ALL
#SBATCH --mail-user alma.hansen.3759@student.uu.se
# Load modules
module load bioinfo-tools
module load canu/2.0
# Your commands
canu \
 -p assembly_L_Ferriphilum -d /home/almal/GenomeAnalysis_Alma/DNA_Assembly \
 genomeSize=2.4m useGrid=false\
 -pacbio /home/almal/GenomeAnalysis_Alma/DNA_raw_data/*

