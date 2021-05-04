library(dslabs)
data("us_contagious_diseases")

#1
 #a.When we want to display percentages.

#2
 #b.The axis does not start at 0. Judging by the length, it appears Trump received 3 times as many votes when, in fact, it was about 30% more.

#3
 #c.The plot on the right is better because alphabetical order has nothing to do with the disease and by ordering according to actual rate, we quickly see the states with most and least rates.

#4
dat <- us_contagious_diseases %>%  
  filter(year == 1967 & disease=="Measles" & !is.na(population)) %>%
  mutate(rate = count / population * 10000 * 52 / weeks_reporting)

dat %>% ggplot(aes(state, rate)) +
  geom_bar(stat="identity") +
  coord_flip() 

state <- dat$state
rate <- dat$count/dat$population*10000*52/dat$weeks_reporting
state <- reorder(state, rate)
state

#5
dat <- us_contagious_diseases %>%  
  filter(year == 1967 & disease=="Measles" & !is.na(population)) %>%
  mutate(rate = count / population * 10000 * 52 / weeks_reporting) %>%
  mutate(state = reorder(state,rate))
dat %>% ggplot(aes(state,rate)) +
  geom_bar(stat = 'identity') +
  coord_flip()

#6
library(dslabs)
data("murders")
murders %>% mutate(rate = total/population*100000) %>%
  group_by(region) %>%
  summarize(avg = mean(rate)) %>%
  mutate(region = factor(region)) %>%
  ggplot(aes(region, avg)) +
  geom_bar(stat="identity") +
  ylab("Murder Rate Average")
 #c.It does not show all the data. We do not see the variability within a region and it’s possible that the safest states are not in the West.

#7
data("murders")
murders %>% mutate(rate = total/population*100000) %>%
  group_by(region) %>%
  mutate(region = reorder(region, rate, FUN=median)) %>%
  ggplot(aes(region,rate)) +
  geom_boxplot() +
  geom_jitter(width = 0.1, alpha = 0.2)

#8
 #a.Humans are not good at reading pseudo-3D plots.
