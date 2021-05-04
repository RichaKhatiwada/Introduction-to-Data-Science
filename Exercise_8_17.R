#1
library(ggplot2)
library(dplyr)
data(heights)
names(heights)
?geom_histogram
geom_histogram(aes(heights$height))

#2
heights %>% 
  ggplot(aes(height))

#3
heights %>% 
  ggplot(aes(height)) +
  geom_histogram()

#4
heights %>% 
  ggplot(aes(height)) +
  geom_histogram(binwidth = 1)

#5
heights %>% 
  ggplot(aes(height)) +
  geom_density()

#6
heights %>% 
  ggplot(aes(height, group=sex)) + 
  geom_density()

#7
heights %>% 
  ggplot(aes(height, color=sex)) + 
  geom_density()

#8
heights %>% 
  ggplot(aes(height, fill=sex)) + 
  geom_density(alpha=0.2)

