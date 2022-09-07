#!/bin/bash

echo "Define variables" 
sample=$1

echo "Unpacking software"
tar -xzf bwa.tar.gz 

echo "Setting PATH for bwa" 
export PATH=$_CONDOR_SCRATCH_DIR/bwa/:$PATH

echo "Indexing E. coli genome"

echo "Starting bwa alignment"

echo "Cleaning up files generated from genome indexing"
rm ecoli_rel606.fasta.gz.amb
rm ecoli_rel606.fasta.gz.ann
rm ecoli_rel606.fasta.gz.bwt
rm ecoli_rel606.fasta.gz.pac
rm ecoli_rel606.fasta.gz.sa
