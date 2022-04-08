#!/bin/bash -l
#SBATCH -A uppmax2022-2-5
#SBATCH --reservation=uppmax2022-2-5_3
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
# Your commands
mummer -mum -b -c /home/almal/GenomeAnalysis_Alma/reference/* /home/almal/GenomeAnalysis_Alma/DNA_Assembly/assembly_L_Ferriphilum.contigs.fasta > ref_qry.mums
mummerplot --postscript --prefix=ref_qry ref_qry.mums