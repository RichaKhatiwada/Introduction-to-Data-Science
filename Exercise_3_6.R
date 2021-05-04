#1
x <- c(1,2,-3,4)

if(all(x>0)){
  print("All Postives")
} else{
  print("Not all positives")
}

#2
x <- c(TRUE, TRUE)
all(x)
any(x)
any(!x)
all(!x)

x <- c(TRUE, TRUE, FALSE)
all(x)
any(x)
any(!x)
all(!x)

 #so answer is d. all(!x)

#3
library(dslabs)
data(murders)
abbs <- murders$abb
states <- murders$state
new_names <- ifelse(nchar(states)>8,abbs,states)
new_names

#4
sum_n <- function(n){
  sum(1:n)
}
n<- 5000
sum_n(n)

#5
altman_plot <- function(x,y){
  plot(x+y,x-y)
}
x<-c(2,5,8,13,9)
y<-c(0,2,5,6,1)
altman_plot(x,y)

#6
x <- 3
my_func <- function(y){
  x <- 5
  y+5
}
x

#7
compute_s_n <- function(n){
  a <- 1:n
  sum(a^2)
}
compute_s_n(10)

#8
s_n <- vector("numeric",25)
compute_s_n <- function(n){
  a <- 1:n
  sum(a^2)
}
for(i in 1:25){
  s_n[i] <- compute_s_n(i)
}
s_n

#9
n <- 1:25
compute_s_n <- function(n){
  a <- 1:n
  sum(a^2)
}
sapply(n, compute_s_n)

#10
n <- 1:25
compute_s_n <- function(n){
  a <- 1:n
  sum(a^2)
}
library(purrr)
map_dbl(n,compute_s_n)

#11
n <- 1:25
compute_s_n <- function(n){
  a <- 1:n
  sum(a^2)
}
Sn <- sapply(n, compute_s_n)
plot(n,Sn)

#12
n <- 1:25
compute_s_n <- function(n){
  a <- 1:n
  sum(a^2)
}
Sn <- sapply(n, compute_s_n)

Sn_2 <- n*(n+1)*(2*n+1)/6
identical(Sn,Sn_2)


