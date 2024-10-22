A <- 1:100
B <- 2 * A + rnorm(100, sd = 3)

mydata <- data.frame(varA = A, varB = B)
head(mydata)
str(mydata)

plot(mydata$varA, mydata$varB, xlab = "Variable A", ylab = "Variable B")

## Save plot in a jpg file
png("Scatterplot.png")
plot(mydata$varA, mydata$varB, xlab = "Variable A", ylab = "Variable B")
dev.off()

## Export dataset
write.csv(mydata, "mydata.csv")
mydata <- read.csv("mydata.csv")
summary(mydata)

## Plot with formula
plot(varB ~ varA, data = mydata)

## lm with a simple formula B ~ A
ABlm <- lm(varB ~ varA, mydata)
ABlm
## visualise result
abline(ABlm)

## Investigations with inferential stats
summary(ABlm)

## Diagnostic plot
plot(ABlm)
## Select first plot lack of fit
plot(ABlm, 1)
## prediction?
