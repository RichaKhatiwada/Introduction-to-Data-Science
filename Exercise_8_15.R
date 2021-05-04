#1
library(dslabs)
data(heights)
male <- heights$height[heights$sex == "Male"]
female <- heights$height[heights$sex == "Female"]
length(male)
length(female)

#2
p <- c(0.1,0.3,0.5,0.7,0.9)
female_percentiles <- quantile(female,p)
female_percentiles
male_percentiles <-quantile(male,p)
male_percentiles
df <- data.frame(female_percentiles,male_percentiles)
df

#3
 #Asia

#4
 #Africa

#5
 #10

#6
 #b.0.75

#7
 #Americas

#8
library(dslabs)
data(heights)
x <- heights$height[heights$sex=="Male"]
y <- x>69 & x<=72
mean(y)

#9
avg <- mean(x)
s <- sd(x)
pnorm(72,mean=avg, sd =s) - pnorm(69,mean=avg, sd =s)

#10
ec <- mean(x>79 & x<=81)
np <- pnorm(81,mean=avg, sd =s) - pnorm(79,mean=avg, sd =s)
ec/np

#11
1-pnorm(84,69,3)

#12
pop <- 10^9
tall <- 1 - pnorm(84,69,3)
men <- round(pop*tall)
men

#13
10/men

#14
a <- 1-pnorm(80,69,3)
b <- round(10^9 * a)
150/b

#15
 #c.As seen in question 10, the normal approximation tends to underestimate the extreme values. It’s possible that there are more seven footers than we predicted.
