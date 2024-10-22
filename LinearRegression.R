A <- 1:100
B <- 2 * A + rnorm(100, sd = 3)

mydata <- data.frame(varA = A, varB = B)
head(mydata)
str(mydata)

plot(mydata$varA, mydata$varB, xlab = "Variable A", ylab = "Variable B")

## lm with a simple formula B ~ A
ABlm <- lm(B ~ A)
## visualise result
abline(ABlm)
## Diagnostic plot
plot(ABlm)
## prediction?
