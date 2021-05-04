library(dslabs)
data("murders")

#1
murder_rate <- (murders$total/murders$population) * 100000
low <- murder_rate < 1

#2
which(low)

#3
murders$state[low]

#4
murders$state[low & murders$region=='Northeast']

#5
average <- mean(murder_rate)
sum(murder_rate < average)

#6
ind <- match(c('AK','MI','IA'),murders$abb)
murders$state[ind]

#7
c('MA','ME','MI','MO','MU') %in% 
  murders$abb

#8
abbs <- c('MA','ME','MI','MO','MU')
not_abb <- !abbs %in% 
  murders$abb
index <- which(not_abb)
abbs[index]
