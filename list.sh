# 18-9-2018 JHZ
# Generation of file lists and directories

# Sequence data for the Somalogic SOMAscan assay
R --no-save <<END
library(readat)
vars <- c("AptamerId","SomaId","Target","TargetFullName","UniProt","EntrezGeneID","EntrezGeneSymbol")
write.table(aptamers[vars],file="aptamers.txt",quote=FALSE,row.names=FALSE,sep="\t")
chrpos <- as.data.frame(chromosomalPositions)
vars <- c("group","group_name","AptamerId","UniProt","EntrezGeneID")
write.table(chrpos[vars],file="chrpos.txt",quote=FALSE,row.names=FALSE,sep="\t")
END

export box=/scratch/jhz22/box
export sumstats=/scratch/jhz22/sumstats
mkdir $sumstats
cd $sumstats
mkdir FHS INTERVAL KORA Malmo QMDiab
cd -

# FHS, 1118 items, 16m imputed genotypes by unidentified IDs

ls $box/FHS | sed 's/X_//g;s/.txt.gz//g' > $sumstats/FHS.list

# INTERVAL, A1CF results for imputed genotypes by chromosome

ls $box/INTERVAL/A1CF.12423.38.3/ | sed 's/12423.38.3_chrom_//g;s/_meta_final_v1.tsv.gz//g' > $sumstats/INTERVAL.list

# KORA, 1131 panel, PLINK outputs on 8m imputed genotypes by AptamerId

ls $box/KORA | sed 's/KORA_pGWAS.//g;s/.assoc.linear.gz//g' > $sumstats/KORA.list

# Malmo, 1306 panel, 15m imputed genotypes by EntrezGeneSymbol

ls $box/Malmo | sed 's/^zln//g;s/_summary.csv.gz//g' > $sumstats/Malmo.list

# QMDiab, PLINK outputs (4+1141) 20m imputed genotypes by AptamerId

ls $box/QMDiab/PGWAS_Results | \
sed 's/QMDiab_pGWAS.//g;s/.assoc.linear.gz//g;s/.assoc.linear//g' > $sumstats/QMDiab.list
