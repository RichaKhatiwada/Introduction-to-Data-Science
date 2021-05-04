#1
temp <- c(35, 88, 42, 84, 81, 30)
city <- c("Beijing", "Lagos", "Paris", "Rio de Janeiro", 
          "San Juan", "Toronto")
temp_Celsius <- (5/9)*(temp-32)
city_temps <- data.frame(name = city, temperature = temp_Celsius)
city_temps

#2
i <- seq(1,100)
summation <- sum(1/i^2)
summation

#3
library(dslabs)
data("murders")
total_murders <- murders$total
pop <- murders$population
murder_rate <- (total_murders/pop)*100000 
mean(murder_rate)  
  
  
  
  