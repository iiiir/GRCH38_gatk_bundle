#!/bin/bash

vcffile=$1
chainfile="hg19ToHg38.over.chain.gz"
refg="GCA_000001405.15_GRCh38_no_alt_analysis_set.fna"
vcfname=`basename $vcffile`

echo "CrossMap.py vcf $chainfile $vcffile $refg ${vcfname/hg19/hg38}"
