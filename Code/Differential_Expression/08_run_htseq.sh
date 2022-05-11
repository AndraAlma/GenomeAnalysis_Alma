#!/bin/bash -l
#SBATCH -A uppmax2022-2-5
#SBATCH --reservation=uppmax2022-2-5_5
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 15:00:00
#SBATCH -J Paper2htseq
#SBATCH --mail-type=ALL
#SBATCH --mail-user alma.hansen.3759@student.uu.se
# Load modules
module load bioinfo-tools
module load htseq
module load samtools
# Your commands
samtools index -b /home/almal/GenomeAnalysis_Alma/DNA_annotation/ERR2036629.sorted.bam
samtools index -b /home/almal/GenomeAnalysis_Alma/DNA_annotation/ERR2036630.sorted.bam
samtools index -b /home/almal/GenomeAnalysis_Alma/DNA_annotation/ERR2036631.sorted.bam
samtools index -b /home/almal/GenomeAnalysis_Alma/DNA_annotation/ERR2036632.sorted.bam
samtools index -b /home/almal/GenomeAnalysis_Alma/DNA_annotation/ERR2036633.sorted.bam

htseq-count -f bam -r pos -t CDS -i locus_tag -s no /home/almal/GenomeAnalysis_Alma/DNA_annotation/ERR2036629.sorted.bam /home/almal/GenomeAnalysis_Alma/DNA_annotation/ERR2036630.sorted.bam /home/almal/GenomeAnalysis_Alma/DNA_annotation/ERR2036631.sorted.bam /home/almal/GenomeAnalysis_Alma/DNA_annotation/ERR2036632.sorted.bam /home/almal/GenomeAnalysis_Alma/DNA_annotation/ERR2036633.sorted.bam /home/almal/GenomeAnalysis_Alma/DNA_annotation/L_ferriphilum/L_ferriphilum.gff