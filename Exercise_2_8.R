#1
temp <- c(35,88,42,84,81,30)
temp

#2
city <- c('Beijing', 'Lagos', 'Paris', 'Rio de Janeiro', 'San Juan', 'Toronto')
city

#3
names(temp) <- city
temp

#4
temp[1:3]

#5
temp[c('Paris','San Juan')]

#6
num <- 12:73
num

#7
pon <- seq(1,99,2)
pon

#8
numlist <- seq(6,55,4/7)
numlist
length(numlist)

#9
a <- seq(1, 10, 0.5)
class(a)

#10
a <- seq(1, 10)
class(a)

#11
class(a<-1)
class(a<-1L)

#12
x <- c("1", "3", "5")
class(x)
z <- as.integer(x)
class(z)
