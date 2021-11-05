###############
# Move FASTQs #
###############

ids=("8893" "8900" "8907" "8914" "8921" "8928" "8935" "8942" "8949" "8956" "8963" "8970" "8977" "8984" "8614" "8649" "8684" "9096" "9103" "9110" "9117" "9124" "9131" "9138" "9145" "9152" "9159" "9166" "9173" "9180" "9187" "5230")

for id in ${ids[@]}
do 

    find /pool/data/globus/raw_answerals_epigenomics/ -iname "*$id*" -type f -exec mv '{}' /pool/data/globus/fraenkel_internal/AALS_signal_reproducibility/1_fastq/batch_53/ \; 

done


#################
# Rename FASTQs #
#################

find /pool/data/globus/fraenkel_internal/AALS_signal_reproducibility/1_fastq -iname "*R1.fq.gz*" -exec rename 's/R1.fq/1.fastq/' '{}' \; 
find /pool/data/globus/fraenkel_internal/AALS_signal_reproducibility/1_fastq -iname "*R2.fq.gz*" -exec rename 's/R2.fq/2.fastq/' '{}' \; 

# incorrect naming from Diagenode
find . -iname "*CS9DE2iCTR-n1*" -exec rename 's/CS9DE2iCTR-n1/NEUGM959DE2/' '{}' \;

