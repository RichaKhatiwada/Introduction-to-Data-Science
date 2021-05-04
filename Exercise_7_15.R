library(dplyr)
library(ggplot2)
library(dslabs)
data(heights)
data(murders)

#1
p <- murders %>% ggplot()
class(p)

#2
p
 #answer is b.A blank slate plot.

#3
p <- heights %>% ggplot()

#4
class(p)

#5
?murders
 #answer is c.total and population.

#6
murders %>% 
  ggplot(aes(x = population , y = total )) +
  geom_point()

#7
murders %>% 
  ggplot(aes(total,population)) +
  geom_point()

#8
murders %>% 
  ggplot(aes(population, total)) + 
  geom_label()
 #answer is b.We need to let geom_label know what character to use in the plot.

#9
murders %>% 
  ggplot(aes(population, total,label=abb)) + 
  geom_label()

#10
 #answer is d.Because we want all colors to be blue, we do not need to map colors, just use the color argument in geom_label.

#11
murders %>% 
  ggplot(aes(population, total,label=abb)) + 
  geom_label(col='blue')

#12
 #answer is b.Because each label needs a different color we map the colors through the color argument of aes 

#13
murders %>% 
  ggplot(aes(population, total,label=abb,col=region)) + 
  geom_label()

#14
p <- murders %>% 
  ggplot(aes(population, total, label = abb, color = region)) +
  geom_label() 

p + scale_x_log10()

#14
p + scale_x_log10() + scale_y_log10()

#15
p + scale_x_log10() + 
  scale_y_log10() +
  ggtitle("Gun murder data")



