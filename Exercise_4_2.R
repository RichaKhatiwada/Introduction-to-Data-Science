#1
library(tidyverse)
data("co2")
head(co2)
str(co2)
 #answer is d.co2 is not tidy: to be tidy we would have to wrangle it to have three columns (year, month and value), then each co2 observation would have a row.

#2
data("ChickWeight")
head(ChickWeight)
str(ChickWeight)
 #answer is b.ChickWeight is tidy: each observation (a weight) is represented by one row. The chick from which this measurement came is one of the variables.

#3
data(BOD)
head(BOD)
str(BOD)
 #answer is c.BOD is tidy: each row is an observation with two values (time and demand)

#4
data("BJsales")
head(BJsales)  
str(BJsales) #not tidy

data("EuStockMarkets")
head(EuStockMarkets)
str(EuStockMarkets) #not tidy

data("DNase")
head(DNase) 
str(DNase) #tidy

data("Formaldehyde")
head(Formaldehyde)
str(Formaldehyde)  #tidy

data("Orange")
head(Orange)
str(Orange) #tidy

data("UCBAdmissions")
head(UCBAdmissions)
str(UCBAdmissions) #not tidy

 #answer is c.DNAse, d.Formaldehyde, e.Orange are tidy data.

