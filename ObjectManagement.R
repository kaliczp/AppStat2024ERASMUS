## How to remove object?
?rm
## Remove all object (brush in RStudio). It is removes REALLY ALL!!!
rm(list = ls())

## Remove some object
## Select them with ls()
## Eg. list all element with big A
ls(patt = "A")
## All object wiht m in their name
ls(patt = "m")
## Object begins with m
ls(patt = "^m")
## good practice to use some unique character for temporary big files!
ttrandom <- rnorm(10)
ttmorerandom <- rnorm(20)
ttmorerandom2 <- rnorm(20)
ttmorerandom3 <- rnorm(20)
ls(patt = "^tt")
rm(list = ls(patt = "^tt"))

