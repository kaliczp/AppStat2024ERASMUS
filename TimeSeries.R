## Time series intro
temp <- read.table("ta_h_Sopron_18702023.csv", sep = ";", head = TRUE)
## Sipmle plot against index
plot(temp$ta, type = "l")
## Date introduced
Sys.Date()
Sys.Date() + 1 # tomorrow
as.Date("1870-01-01")
tempDate <- as.Date("1870-01-01") + 0:(nrow(temp)-1)
tempDate <- as.Date("1869-12-31") + 1:nrow(temp)
## Plot wiht date
plot(tempDate, temp$ta, type = "l")
## Customised time axis with advanced plot
plot(tempDate, temp$ta, type = "l", xaxs = "i", xaxt = "n", xlab = "", ylab = "Temperature")
## Creat yearly tickas.Date("1870-01-01")
as.Date("1870-01-01") + c(0,365, 2:5*365) # wrong because leap year
beginyear <- as.Date(paste0(1870:2023, "-01-01"))
axis.Date(side = 1, at = beginyear)
