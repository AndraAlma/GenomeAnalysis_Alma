#To load in all the correct stuff:

if (!require("BiocManager", quietly = TRUE))
  install.packages("BiocManager")

BiocManager::install("ReportingTools")
BiocManager::install("DESeq2")

library("DESeq2")
library("ReportingTools")


#The conditions for each of the 5 samples into a 5x1 data frame
condition_vector <- data.frame('continuous', 'continuous', 'batch', 'batch', 'continuous')
new_vector <- data.frame(t(condition_vector))

# Read in count file 
sample <- read.table("mapped_read_counts.txt", header = FALSE)
sample_file <- sample[,-1]



#Set column names to avoid some error messages
colnames(new_vector) <- "condition"
colnames(sample_file) <- NULL

#Store all the variables and run DESeq2
ddsHTSeq <- DESeqDataSetFromMatrix(countData = sample_file, colData = new_vector, design = ~condition)
dds <- DESeq(ddsHTSeq)


#Get result table & order it
res <- results(dds)
resOrdered <- res[order(res$pvalue),]
resultsNames(ddsHTSeq)

#Check results for p < 0.05
res05 <- results(dds, alpha=0.05)
summary(res05)
sum(res05$padj < 0.05, na.rm=TRUE)


# Plot MA
plotMA(res05, ylim=c(-4,4))

# Plot PCA
x = vst(ddsHTSeq)
plotPCA(x, intgroup="condition")


#Create report with all CDS
report <- HTMLReport(shortName = 'DiffExp_analysis', title = 'Differential expression analysis on continous vs batch cultures with gene names', reportDirectory = ".")
publish(ddsHTSeq, report, pvalueCutoff=0.05, make.plots = TRUE, factor = sampleTable$condition, reportDir = ".")
finish(report)
