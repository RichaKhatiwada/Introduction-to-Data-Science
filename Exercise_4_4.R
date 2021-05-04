#1
library(dplyr)
library(dslabs)
data(murders)
murders <- mutate(murders, rate = total/population * 10^5)
head(murders)

#2
murders <- mutate(murders,rank= rank(-rate))
head(murders)

#3
select(murders, state, abb) %>% head()

#4
filter(murders, rank %in% 1:5)

#5
no_south <- filter(murders, region !='South')
nrow(no_south)       

#6
murders_nw <- filter(murders, region %in% c('Northeast','West'))
nrow(murders_nw)

#7
my_states <- filter(murders, region %in% c('Northeast','West') & rate<1) 
select(my_states,state,rate,rank)
