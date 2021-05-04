library(dslabs)
data("murders")

#1
log_population_in_millions <- log10(murders$population/10^6)
log_total_gun_murders <- log10(murders$total)
plot(log_population_in_millions, log_total_gun_murders)

#2
hist(murders$population)

#3
boxplot(population~region,data=murders)
