#!/bin/bash -l
#SBATCH -A uppmax2022-2-5
#SBATCH --reservation=uppmax2022-2-5_11
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 1:00:00
#SBATCH -J Paper2DNAQC
#SBATCH --mail-type=ALL
#SBATCH --mail-user alma.hansen.3759@student.uu.se
# Load modules
module load bioinfo-tools
module load MUMmer
module load quast
# Your commands
mummer -mum -b -c /home/almal/GenomeAnalysis_Alma/DNA_Assembly/assembly_L_Ferriphilum.contigs.fasta /home/almal/GenomeAnalysis_Alma/reference/* > DNAQA2.mums
mummerplot -png -p DNAQA2 DNAQA2.mums

quast.py -R /home/almal/GenomeAnalysis_Alma/reference/* --threads 2 /home/almal/GenomeAnalysis_Alma/DNA_Assembly/assembly_L_Ferriphilum.contigs.fasta 