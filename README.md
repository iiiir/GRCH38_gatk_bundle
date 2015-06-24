# GRCH38_gatk_bundle
liftover version of the gatk resource bundle for the new assembling GRCH38 (primary assembling, no alt contigs or decoy sequences). 

==DEPENDENCIES==

original resource bundle: 
ftp://ftp.broadinstitute.org/bundle/2.8/hg19/

CrossMap.py
http://crossmap.sourceforge.net/

GRCH38 fasta:
GCA_000001405.15_GRCh38_no_alt_analysis_set.fna

Chain file:
hg19ToHg38.over.chain.gz

vcftools

tabix

==LIFTOVER BUNDLE==  

https://drive.google.com/drive/folders/0B3NI2BxPvRUwflZqbmtBX0xFWWRMNmh5WHZVTm4zcHZRYXcwOWQ4a05uZlhETW95NHlJczg

NOTE: dbSNP has official release for GRCH38:
ftp://ftp.ncbi.nlm.nih.gov/snp/organisms//human_9606_b144_GRCh38p2/VCF/00-All.vcf.gz
The file will work for GATK pipeline and no post-process neccesary. 
