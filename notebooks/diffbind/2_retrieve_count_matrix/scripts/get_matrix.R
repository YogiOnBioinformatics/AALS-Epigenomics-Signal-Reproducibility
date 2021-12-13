
library(DiffBind)

obj = dba(sampleSheet="/home/yraghav/AALS-Epigenomics-Signal-Reproducibility/notebooks/diffbind/pre-processing/output/sample_sheet.csv", minOverlap=.1)

obj = dba.count(obj, minOverlap=.1, score=DBA_SCORE_TMM_READS_FULL, bParallel=TRUE)

save(obj, file="/home/yraghav/Stas_Object.Rdata")

write.table(dba.peakset(obj, DataType=DBA_DATA_FRAME, bRetrieve=TRUE), 
           "/home/yraghav/AALS-Epigenomics-Signal-Reproducibility/notebooks/diffbind/2_retrieve_count_matrix/output/matrix.tsv", 
           sep="\t", 
           row.names=TRUE, 
           col.names=TRUE)