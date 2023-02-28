# Question 2

#### Establishing variables

x <-c( 92 , 40 , 26 , 10 , 18 , 40 )
y <- c( 29 , 7 , 12 , 35 , 94 , 43 )

## a
mean(x)

## b
potato <- (3 * x)+(y)-2
median(potato)

## c

## d
plot(x,y)
?plot


# Question 3
fun <- read.table(file="miscData/a1q3data.txt",
                  header=TRUE,
                  sep=",")
head(fun)

## a
length(fun$Height)
## b
mean(fun$Height)
## c
median(fun$Height)
## d
var(fun$Height)
## e
sd(fun$Height)
### 1
funPlot <- hist(fun$Height)
