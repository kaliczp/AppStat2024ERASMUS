## Generate random data
rnorm(50)
## Optional form
rnorm(n = 50)
rnorm(50, mean = 0, sd = 1)
## Assign to a variable
a <- rnorm(50)
## List all the saved objects
ls()
## You can use any other arbitary name (some rules in naming)
mysecondobject <- rnorm(100)
## You can use equal sign too
mythirdobject = rnorm(80)
## The syste CASE SENSITIVE
MyFourthObject <- rnorm(70)

## 1D visualisation
## Stem-and-leaf
stem(a)
## Histogram
hist(a)
## Bins calculated automaticly
hist(mysecondobject)
hist(mythirdobject)
## You can use other function in arugment list
hist(rnorm(1000))
hist(rnorm(100000))
?hist
## Boxplot
boxplot(a)
boxplot(a, mysecondobject, mythirdobject, MyFourthObject)
## QQplot
qqnorm(a)
qqnorm(mysecondobject)
qqline(mysecondobject)
