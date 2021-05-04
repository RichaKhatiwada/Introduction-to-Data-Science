library(dslabs)
data(murders)

#1
pop <- murders$population
sortpop <- sort(pop)
sortpop[1]

#2
pop <- murders$population
orderpop <- order(pop)
orderpop[1]

#3
which.min(murders$population)

#4
states <- murders$state
i_min = which.min(murders$population)
states[i_min]

#5
states <- murders$state
ranks <- rank(murders$population)
my_df <- data.frame(name=states,ranking=ranks)
my_df

#6
states <- murders$state
ind <- order(murders$population)
ranks <- rank(murders$population)
r = ranks[ind]
s = states[ind]
my_df <- data.frame(name=s,ranking=r)
my_df

#7
dat <- data("na_example")  
str(na_example)
mean(na_example)
ind <- is.na(na_example)
sum(ind)

#8
mean(na_example [!ind])