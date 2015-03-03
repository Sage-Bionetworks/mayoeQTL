# mayoeQTL
Script to download MayoLOAD GWAS genotypes, MayoEGWAS gene expression data, and covariates for each data-set

In addition, this script synchronizes the sample ids between all the data frames so that they are standard

Author: Benjamin A Logsdon (ben.logsdon@sagebase.org)

#Requirements:
Synapse R client installed (https://www.synapse.org/#!Synapse:syn1834618)

Have a synapse account (https://www.synapse.org/#!RegisterAccount:0)

Have plink installed (http://pngu.mgh.harvard.edu/~purcell/plink/)

Data access approval to MayoLOADGWAS data (https://www.synapse.org/#!Synapse:syn2954402)

Data access approval to MayoEGWAS data (https://www.synapse.org/#!Synapse:syn2910255)

Unix like shell environment

#Instructions
clone repo into a local directory

``
git clone https://github.com/blogsdon/mayoeQTL.git
``

run script

``
./grabMayoEGWASdata.sh
``

After script is run, all data will be downloaded into your local directory into MayoEGWASAnalyses/.  You can now open an R session in the newly created MayoEGWASAnalyses directory, and then source the loadEGWASdata.R script.  This will load the expression data, covariate data, and chromosome 22 for the cerebellum samples into the R session.

``
cd MayoEGWASanalyses/
``

``
R
``

``
source('../loadEGWASdata.R')
``

Once these scripts are run the data is stored in R as follows.  `cere_cov` contains the covariates for the cerebellum gene expression data, `gwas_cere_cov` contains the covariates for the genotype data for the cerebellum samples, `mayo_egwas_cere_data` contains the expression data for the cerebellum samples, and finally `mayo_geno_cere_22` contains the genotype data for the 22nd chromosome for the cerebellum samples.  Similarly, `tcx_cov` contains the covariates for the temporal cortex expression data,  `gwas_tcx_cov` contains the genotype covariates for the temporal cortex samples, and `mayo_egwas_tcx_data` conatins the expression data for the temporal cortex samples.  The `reorderGenotypes` function can be used to synchronize additional genotype data that can be read in from `MayoEGWASanalyses/cerebellumGenotypes` or `MayoEGWASanalyses/temporalCortexGenotypes` as shown in the `loadEGWASdata.R` script.
