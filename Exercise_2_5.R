#1
library(dslabs)
data(murders)
str(murders)
 #answer is c.The state name, the abbreviation of the state name, the state’s region, and the state’s population and total number of murders for 2010.

#2
names(murders)

#3
a <- murders$abb
class(a)

#4
b <-murders[['abb']]
identical(a,b)

#5
class(murders$region)
length(levels(murders$region))

#6
table(murders$region)