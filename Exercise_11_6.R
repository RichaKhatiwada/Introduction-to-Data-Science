install.packages("HistData")
library(HistData)
data("Galton")
x <- Galton$child

#1
mean(x)
median(x)

#2
median(x)
mad(x)

#3
x_with_error <- x
x_with_error[1] <- x_with_error[1]*10
mean(x_with_error) - mean(x)

#4
sd(x_with_error) - sd(x)

#5
median(x_with_error) - median(x)

#6
mad(x_with_error) - mad(x)

#7
 #c.A boxplot, histogram, or qq-plot would reveal a clear outlier.

#8
error_avg <- function(k){
  x_with_k <- x
  x_with_k[1] <- k
  mean(x_with_k)
}
error_avg(k=10000)
error_avg(k=-10000)
