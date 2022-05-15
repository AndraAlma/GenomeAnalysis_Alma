#!/bin/bash -l
#SBATCH -A uppmax2022-2-5
#SBATCH --reservation=uppmax2022-2-5_5
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 01:00:00
#SBATCH -J Paper2BLAST
#SBATCH --mail-type=ALL
#SBATCH --mail-user alma.hansen.3759@student.uu.se
# Load modules
module load bioinfo-tools
module load blast
module load artemis

# Your commands
blastn -query /home/almal/GenomeAnalysis_Alma/DNA_Assembly/assembly_L_Ferriphilum.contigs.fasta -subject /home/almal/GenomeAnalysis_Alma/reference/OBMB01.fasta -outfmt 6 > comparison.crunch

