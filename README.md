# AALS-Epigenomics-Signal-Reproducibility
Determining reproducibility of Epigenomic signal for Answer ALS

# Chronology: 

1. 📂`data_engineering/`

Script for renaming FASTQ files for downstream ATAC-Seq pipeline analysis. 

2. 📂`cromwell/`

Input and workflow IDs for Cromwell workflow engine for ATAC-Seq pipeline analysis. 

3. 📂`qc/`

Quality control metrics for ATAC-Seq pipeline analysis.

4. 📂`notebooks/diffbind/1_pre_processing/`

Create the `DiffBind` input sample sheet. 

5. 📂`notebooks/diffbind/2_retrieve_count_matrix/`

Get `TMM-normalized` count matrix from `DiffBind`.

6. 📂`notebooks/clustermaps/`

Create correlation heatmap and hierarchical clustering using `Seaborn`. 

7. 📂`notebooks/PCA/`

Create PCA plots and calculate correlation between PC coordinates for each pair of samples. 

8. 📂`presentation/`

Presentation of the analysis. 