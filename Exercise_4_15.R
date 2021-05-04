#1
library(dplyr)
data(murders)
head(murders)
str(murders)
 # answer is b.murders is in tidy format and is stored in a data frame.

#2
murders_tibble <- as_tibble(murders)

#3
murders %>%
  group_by(region)

#4
murders %>% 
  select(population) %>%
  log(.) %>% 
  pull(.) %>%
  mean(.) %>%
  exp(.)





