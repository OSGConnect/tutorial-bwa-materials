#!/bin/bash

echo "Unpacking software"
tar -xzf bwa.tar.gz 

echo "Setting PATH for bwa" 
export PATH=$_CONDOR_SCRATCH_DIR/bwa/:$PATH

echo "Indexing E. coli genome"
bwa index ecoli_rel606.fasta.gz

echo "Starting bwa alignment"
bwa mem ecoli_rel606.fasta.gz SRR263_1.fastq SRR263_2.fastq > SRR263.aligned.sam

echo "Cleaning up files generated from genome indexing"
rm ecoli_rel606.fasta.gz.amb
rm ecoli_rel606.fasta.gz.ann
rm ecoli_rel606.fasta.gz.bwt
rm ecoli_rel606.fasta.gz.pac
rm ecoli_rel606.fasta.gz.sa
