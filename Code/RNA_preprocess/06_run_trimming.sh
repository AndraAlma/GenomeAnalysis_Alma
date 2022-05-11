#!/bin/bash -l
#SBATCH -A uppmax2022-2-5
#SBATCH --reservation=uppmax2022-2-5_8
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 10:00:00
#SBATCH -J Paper2RNAtrim
#SBATCH --mail-type=ALL
#SBATCH --mail-user alma.hansen.3759@student.uu.se
# Load modules
module load bioinfo-tools
module load trimmomatic
# Your commands
trimmomatic PE -threads 2 -phred33 \
-basein /home/almal/GenomeAnalysis_Alma/RNA_raw_data/ERR2036629_1.fastq.gz \
-baseout /home/almal/GenomeAnalysis_Alma/RNA_preprocess/ERR2036629_Trimmed.fastq.gz \
ILLUMINACLIP:/sw/apps/bioinfo/trimmomatic/0.36/snowy/adapters/TruSeq3-PE.fa:2:30:10:2:keepBothReads \
LEADING:20 TRAILING:20 SLIDINGWINDOW:1:3 MINLEN:40 MAXINFO:40:0.5

trimmomatic PE -threads 2 -phred33 \
-basein /home/almal/GenomeAnalysis_Alma/RNA_raw_data/ERR2036630_1.fastq.gz \
-baseout /home/almal/GenomeAnalysis_Alma/RNA_preprocess/ERR2036630_Trimmed.fastq.gz \
ILLUMINACLIP:/sw/apps/bioinfo/trimmomatic/0.36/snowy/adapters/TruSeq3-PE.fa:2:30:10:2:keepBothReads \
LEADING:20 TRAILING:20 SLIDINGWINDOW:1:3 MINLEN:40 MAXINFO:40:0.5

trimmomatic PE -threads 2 -phred33 \
-basein /home/almal/GenomeAnalysis_Alma/RNA_raw_data/ERR2036631_1.fastq.gz \
-baseout /home/almal/GenomeAnalysis_Alma/RNA_preprocess/ERR2036631_Trimmed.fastq.gz \
ILLUMINACLIP:/sw/apps/bioinfo/trimmomatic/0.36/snowy/adapters/TruSeq3-PE.fa:2:30:10:2:keepBothReads \
LEADING:20 TRAILING:20 SLIDINGWINDOW:1:3 MINLEN:40 MAXINFO:40:0.5

trimmomatic PE -threads 2 -phred33 \
-basein /home/almal/GenomeAnalysis_Alma/RNA_raw_data/ERR2036632_1.fastq.gz \
-baseout /home/almal/GenomeAnalysis_Alma/RNA_preprocess/ERR2036632_Trimmed.fastq.gz \
ILLUMINACLIP:/sw/apps/bioinfo/trimmomatic/0.36/snowy/adapters/TruSeq3-PE.fa:2:30:10:2:keepBothReads \
LEADING:20 TRAILING:20 SLIDINGWINDOW:1:3 MINLEN:40 MAXINFO:40:0.5

trimmomatic PE -threads 2 -phred33 \
-basein /home/almal/GenomeAnalysis_Alma/RNA_raw_data/ERR2036633_1.fastq.gz \
-baseout /home/almal/GenomeAnalysis_Alma/RNA_preprocess/ERR2036633_Trimmed.fastq.gz \
ILLUMINACLIP:/sw/apps/bioinfo/trimmomatic/0.36/snowy/adapters/TruSeq3-PE.fa:2:30:10:2:keepBothReads \
LEADING:20 TRAILING:20 SLIDINGWINDOW:1:3 MINLEN:40 MAXINFO:40:0.5

