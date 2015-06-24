#!/bin/bash

[[ $# -lt 1 ]] && echo "$0 <in.vcf>" && exit 0

vcffile=$1

# sort vcf (did not pipe as the sorted file will be used twice)
# make sure vcftools in PATH
vcf-sort -c $vcffile > $vcffile.sorted

# remove all variants if one of the ALT allele matched the reference
# might be better to put them back sometime later
# e.g. 1       147044300       1520017 T       T,TA ... will be removed
cat $vcffile.sorted |\
    perl -ane 'if (/^\#/){ print; next;}; $dupFlag=0; @alts=split(/\,/,$F[4]); foreach $alt (@alts){if ($alt eq $F[3]){$dupFlag=1;}}print unless ($dupFlag);' |\
        bgzip -c > $vcffile.gz
# grab all filtered variants into vcffiles
cat $vcffile.sorted |\
    perl -ane 'if (/^\#/){next;}; $dupFlag=1; @alts=split(/\,/,$F[4]); foreach $alt (@alts){if ($alt eq $F[3]){$dupFlag=0;}}print unless ($dupFlag);' \
        > $vcffile.duplicated

# creat tabix index for vcf file
tabix $vcffile.gz

# clean up sorted vcf, no longer need
# rm $vcffile.sorted
