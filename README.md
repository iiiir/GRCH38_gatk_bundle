# GRCH38_gatk_bundle

**GATK now holds pre-release of the GRCh38 bundle**
http://gatkforums.broadinstitute.org/wdl/discussion/3843/plans-to-update-the-gatk-bundle

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

https://drive.google.com/folderview?id=0B3NI2BxPvRUwflZqbmtBX0xFWWRMNmh5WHZVTm4zcHZRYXcwOWQ4a05uZlhETW95NHlJczg&usp=sharing#list

NOTE: dbSNP has official release for GRCH38:
ftp://ftp.ncbi.nlm.nih.gov/snp/organisms//human_9606_b144_GRCh38p2/VCF/00-All.vcf.gz
The file will work for GATK pipeline and no post-process neccesary. 

==ACKNOWLEDGEMENT==    
The idea comes from:    
https://wabi-wiki.scilifelab.se/display/SHGATG/gatk+bundle+in+hg38    
The original make script finished but generated unusuable files for me.    
The liftover is then re-done using the two scripts.    
