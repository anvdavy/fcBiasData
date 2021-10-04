# This script demonstrates how to calculate
# the Overestimation Percentage corrected (OPc) metric for forecast bias
# proposed by (Davydenko and Goodwin, 2021, p. 62).
#
# URL for datasets:
# https://github.com/anvdavy/fcBiasData/tree/main/datasets
#
# References:
# Davydenko, A., & Goodwin, P. (2021). Assessing point forecast bias across multiple time series: Measures and visual
# tools. International Journal of Statistics and Probability, 10(5), 46-69. https://doi.org/10.5539/ijsp.v10n5p46
#

# names of methods
methods <- c("Method1","Method2","Method3","Method4","Method5")
# data frame to store results
OPc.table <- data.frame()

# load Dataset1 (see Davydenko and Goodwin, p. 50)
ds1<-read.csv("C:\\anvdavy\\fcBiasData\\DataSet1.csv")

# calculate and store OPc for Dataset1
OPc.table[1,"Dataset"] <- "Dataset1"
for(i in 1:length(methods))
	OPc.table[1,methods[i]] <- mean((1-sign(ds1[,"actual"]-ds1[,methods[i]]))/2)

# load Dataset2 (see Davydenko and Goodwin, p. 51)
ds2<-read.csv("C:\\anvdavy\\fcBiasData\\DataSet2.csv")

# calculate and store OPc for Dataset2
OPc.table[2,"Dataset"] <- "Dataset2"
for(i in 1:length(methods))
	OPc.table[2,methods[i]] <- mean((1-sign(ds2[,"actual"]-ds2[,methods[i]]))/2)


# results stored in OPc.table exactly correspond
# to the results presented in (Davydenko and Goodwin, 2021, Table 9, p. 63)
OPc.table

