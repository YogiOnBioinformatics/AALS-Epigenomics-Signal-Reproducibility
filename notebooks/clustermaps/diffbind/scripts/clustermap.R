library(DiffBind)

obj = dba(sampleSheet="/home/yraghav/AALS-Epigenomics-Signal-Reproducibility/notebooks/diffbind/pre-processing/output/sample_sheet.csv", minOverlap=.1)

obj = dba.count(obj, minOverlap=.1, score=DBA_SCORE_TMM_READS_FULL, bParallel=TRUE)

my.file.rename <- function(from, to) {
    todir <- dirname(to)
    if (!isTRUE(file.info(todir)$isdir)) dir.create(todir, recursive=TRUE)
    file.rename(from = from,  to = to)
}

dba.plotHeatmap(obj)
dev.off()
my.file.rename(from = "Rplots.pdf", to = pname)
print("Differential Heatmap generated and saved:")