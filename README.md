# mayoeQTL
#Script to download MayoLOAD GWAS genotypes, MayoEGWAS gene expression data, and covariates for each data-set
#In addition, this script synchronizes the sample ids between all the data frames so that they are standard
#Author: Benjamin A Logsdon (ben.logsdon@sagebase.org)

#REQUIREMENTS:
#Synapse R client installed (https://www.synapse.org/#!Synapse:syn1834618)
#Have a synapse account (https://www.synapse.org/#!RegisterAccount:0)
#Data access approval to MayoLOADGWAS data (https://www.synapse.org/#!Synapse:syn2954402)
#Data access approval to MayoEGWAS data (https://www.synapse.org/#!Synapse:syn2910255)

#Instructions
#Open terminal
#clone repo into local directory
#change working directory to local directory
#run command ./grabMayoEGWASdata.sh