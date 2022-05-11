#!/bin/bash -l
#SBATCH -A uppmax2022-2-5
#SBATCH --reservation=uppmax2022-2-5_4
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 20:00:00
#SBATCH -J Paper2BWA
#SBATCH --mail-type=ALL
#SBATCH --mail-user alma.hansen.3759@student.uu.se
# Load modules
module load bioinfo-tools
module load bwa
module load samtools
# Your commands
bwa index -p index_mapping /home/almal/GenomeAnalysis_Alma/DNA_Assembly/assembly_L_Ferriphilum.contigs.fasta

bwa mem -t 8 /home/almal/GenomeAnalysis_Alma/DNA_Assembly/assembly_L_Ferriphilum.contigs.fasta /home/almal/GenomeAnalysis_Alma/RNA_preprocess/ERR2036629_Trimmed_1P.fastq.gz /home/almal/GenomeAnalysis_Alma/RNA_preprocess/ERR2036629_Trimmed_2P.fastq.gz | samtools sort -@ 8 -o ERR2036629.sorted.bam -

bwa mem -t 8 /home/almal/GenomeAnalysis_Alma/DNA_Assembly/assembly_L_Ferriphilum.contigs.fasta /home/almal/GenomeAnalysis_Alma/RNA_preprocess/ERR2036630_Trimmed_1P.fastq.gz /home/almal/GenomeAnalysis_Alma/RNA_preprocess/ERR2036630_Trimmed_2P.fastq.gz | samtools sort -@ 8 -o ERR2036630.sorted.bam -

bwa mem -t 8 /home/almal/GenomeAnalysis_Alma/DNA_Assembly/assembly_L_Ferriphilum.contigs.fasta /home/almal/GenomeAnalysis_Alma/RNA_preprocess/ERR2036631_Trimmed_1P.fastq.gz /home/almal/GenomeAnalysis_Alma/RNA_preprocess/ERR2036631_Trimmed_2P.fastq.gz | samtools sort -@ 8 -o ERR2036631.sorted.bam -

bwa mem -t 8 /home/almal/GenomeAnalysis_Alma/DNA_Assembly/assembly_L_Ferriphilum.contigs.fasta /home/almal/GenomeAnalysis_Alma/RNA_preprocess/ERR2036632_Trimmed_1P.fastq.gz /home/almal/GenomeAnalysis_Alma/RNA_preprocess/ERR2036632_Trimmed_2P.fastq.gz | samtools sort -@ 8 -o ERR2036632.sorted.bam -

bwa mem -t 8 /home/almal/GenomeAnalysis_Alma/DNA_Assembly/assembly_L_Ferriphilum.contigs.fasta /home/almal/GenomeAnalysis_Alma/RNA_preprocess/ERR2036633_Trimmed_1P.fastq.gz /home/almal/GenomeAnalysis_Alma/RNA_preprocess/ERR2036633_Trimmed_2P.fastq.gz | samtools sort -@ 8 -o ERR2036633.sorted.bam -