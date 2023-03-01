# Question 1
## a
### i
t <- mean(c(.71, .78, .83))
t
### ii
a <- mean(c(13.6/20, 17/20, 16.6/20, 12.6/20, 12.2/20, 11.6/20, 11/20, 12.4/20))
a
### iii
i <- ((2/3)*t)+((1/3)*a)
i

### iv
f <- ((2/3)*0.74) + ((1/3)*i)
f

## b
x <- c(15,33,27,9,36,12)
bMean <- mean(x)
bMean

bVar <- var(x)

s <- sd(x)

## c
(22-54)/(s/sqrt(198))
# Question 2

sum(x) + 90

#### Establishing variables

x <-c( 92 , 40 , 26 , 10 , 18 , 40 )
y <- c( 29 , 7 , 12 , 35 , 94 , 43 )

## a
mean(x)

## b
potato <- (3 * x)+(y)-2
median(potato)

## c
log(40)

## d
plot(x,y, main="Basic Scatterplot")
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
### 2
names(funPlot)
funPlot$counts
