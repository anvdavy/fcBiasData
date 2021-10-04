# This script implements experiments from (Davydenko and Goodwin, 2021).
# The LnQ metric (Tofallis, 2014) is calculated for Dataset1 and Dataset2 (see Davydenko and Goodwin, 2021, pp. 50-51).
#
# References:
#
# Davydenko, A., & Goodwin, P. (2021). Assessing point forecast bias across multiple time series: Measures and visual
# tools. International Journal of Statistics and Probability, 10(5), 46-69. https://doi.org/10.5539/ijsp.v10n5p46
#
# Tofallis, C. (2014). A better measure of relative prediction accuracy for model selection and model estimation. Journal
# of the Operational Research Society. Advance online publication. https://doi.org/10.1057/jors.2014.103
#

# names of methods
methods <- c("Method1","Method2","Method3","Method4","Method5")
# data frame to store results
LnQ.table <- data.frame()

# load Dataset1 (see Davydenko and Goodwin, p. 50)
ds1<-read.csv("C:\\anvdavy\\fcBiasData\\DataSet1.csv")

# calculate and store OPc for Dataset1
LnQ.table[1,"Dataset"] <- "Dataset1"
for(i in 1:length(methods))
	LnQ.table[1,methods[i]] <- mean(log(ds1[,methods[i]]/ds1[,"actual"]))

LnQ.table

# load Dataset2 (see Davydenko and Goodwin, p. 51)
ds2<-read.csv("C:\\anvdavy\\fcBiasData\\DataSet2.csv")

# calculate and store OPc for Dataset2
OPc.table[2,"Dataset"] <- "Dataset2"
for(i in 1:length(methods))
	LnQ.table[1,methods[i]] <- mean(log(ds2[,methods[i]]/ds2[,"actual"]))


# results showing mean(LnQ)
LnQ.table

# boxplots for LnQ for Dataset1
boxplot(log(ds1[,methods]/ds1[,"actual"]),title="Dataset1",ylab="LnQ")

# boxplots for LnQ for Dataset2
boxplot(log(ds2[,methods]/ds2[,"actual"]),title="Dataset2",ylab="LnQ")


