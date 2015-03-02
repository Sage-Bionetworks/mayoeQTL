#!/bin/bash

echo "Download data from Synapse"
Rscript grabMayoEGWASdata.R
echo "Move to MayoEGWASanalysis directory"
cd MayoEGWASanalyses
echo "Make directories for subsetted additive encoding of Mayo genotypes"
mkdir temporalCortexGenotypes
mkdir cerebellumGenotypes
echo "Extract individuals with expression data from genotypes and produce chromosomal additive output"
../extractIndividuals.sh
