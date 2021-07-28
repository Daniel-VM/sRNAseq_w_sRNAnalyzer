#!/bin/bash

## This databases takes long to be downloaded. Therefore we will set a new screen environment to download all of them by using a siple sh script

OUTDIR=$PWD/DBs/bowtie/indexes

#wget -P $OUTDIR http://srnanalyzer.systemsbiology.net/downloads/sRNA_DBs.tar.gz
#wget -P $OUTDIR http://srnanalyzer.systemsbiology.net/downloads/MainDBs.tar.gz
#wget -P $OUTDIR http://srnanalyzer.systemsbiology.net/downloads/NCBI_NonHuman.tar.gz
#wget -P $OUTDIR http://srnanalyzer.systemsbiology.net/downloads/E_coli_evaluation_samples.tar.gz

# Move to DB dir
cd $OUTDIR

# Extract tar.gz dfiles
for i in *.tar.gz
do
	tar -xvf $i
done

# Return to sh execution directory
cd -
