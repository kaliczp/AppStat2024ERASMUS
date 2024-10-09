A <- 1:100
B <- 2 * A + rnorm(100)

plot(A, B)

## lm with a simple formula B ~ A
ABlm <- lm(B ~ A)
## visualise result
abline(ABlm)
## Diagnostic plot
plot(ABlm)
## prediction?
