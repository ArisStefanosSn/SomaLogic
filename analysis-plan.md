# Analysis plan

This is to be updated -- for now the following columns as in OLINK CVD1 analysis plan are 
assumed.

SNP table for association results. Missing values are coded as “NA”.

V# | Variable name | Description
---|---------------|------------
V1 | SNPID | SNP ID as rs number
V2 | CHR | Chromosome number (1-22)
V3 | POS | Physical position for the reference sequence (please indicate NCBI build in descriptive file)
V4 | STRAND | Indicator of strand direction. Please specify “+” if positive or forward strand and “-” if negative or reverse strand. 
V5 | N | Number of non-missing observations
V6 | EFFECT_ALLELE | Allele for which the effect (beta coefficient) is reported. For example, in an A/G SNP in which AA = 0, AG=1, and GG=2, the coded allele is G.
V7 | REFERENCE_ALLELE | Second allele at the SNP (the other allele). In the example above, the non-coded allele is A. 
V8 | CODE_ALL_FQ | Allele frequency for the coded allele – “NA” if not available
V9 | BETA | Effect size for the coded allele, beta estimate from the genotype-phenotype association, with at least 5 decimal places. Note: if not available, please report “NA” for this variable.
V10 | SE | Standard error of the beta estimate, to at least 5 decimal places - “NA” if not available. 
V11 | PVAL | p-value of Wald test statistic – “NA” if not available
V12 | RSQ | Residual phenotypic variance explained by SNP. “NA” if not available
V13 | RSQ_IMP| Observed divided by expected variance for imputed allele dosage.
V14 | IMP | Please specify whether the SNP was imputed or genotyped: 1: imputed SNP, 0: directly genotyped SNP
