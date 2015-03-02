# mayoeQTL
Script to download MayoLOAD GWAS genotypes, MayoEGWAS gene expression data, and covariates for each data-set

In addition, this script synchronizes the sample ids between all the data frames so that they are standard

Author: Benjamin A Logsdon (ben.logsdon@sagebase.org)

#Requirements:
Synapse R client installed (https://www.synapse.org/#!Synapse:syn1834618)

Have a synapse account (https://www.synapse.org/#!RegisterAccount:0)

Data access approval to MayoLOADGWAS data (https://www.synapse.org/#!Synapse:syn2954402)

Data access approval to MayoEGWAS data (https://www.synapse.org/#!Synapse:syn2910255)

#Instructions
clone repo into local directory

``
git clone https://github.com/blogsdon/mayoeQTL.git
``

run script

``
./grabMayoEGWASdata.sh
``

After script is run, all data will be downloaded into your local directory.  You can now open an R session in the newly created MayoEGWASAnalyses directory, and then source the loadEGWASdata.R script.  This will load the expression data, covariate data, and chromosome 22 for the cerebellum samples into the R session.

``
cd MayoEGWASAnalyses/
R
source('loadEGWASdata.R')
``
