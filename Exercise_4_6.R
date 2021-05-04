#1
library(dplyr)
library(dslabs)
data(murders)
murders <- mutate(murders, rate =  total / population * 100000, 
                  rank = rank(-rate))
filter(murders, region %in% c("Northeast", "West") & rate < 1) %>%
  select(state, rate, rank)

#2
data(murders)
my_states <- murders %>%
  mutate(rate =  total / population * 100000, rank = rank(-rate)) %>%
  filter(region %in% c("Northeast", "West") & rate < 1) %>%
  select(state, rate, rank)
my_states
