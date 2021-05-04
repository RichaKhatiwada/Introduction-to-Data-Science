#1
path <- system.file("extdata", package = "dslabs")
files <- list.files(path)
files

setwd(system.file("extdata", package = "dslabs")) 

library(readr)
read_csv('carbon_emissions.csv')
read_csv('fertility-two-countries-example.csv')
read_csv('olive.csv')
read_csv('life-expectancy-and-fertility-two-countries-example.csv')
read_csv('murders.csv')
read_csv('ssa-death-probability.csv')
read_table('HRlist2.txt')
library(readxl)
read_xls('2010_bigfive_regents.xls')

#2
?read_csv
dat <- read_csv('olive.csv',skip=1)                             

#3
names(dat)
readLines(dat,n=1)



