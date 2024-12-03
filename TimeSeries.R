## Time series intro
temp <- read.table("ta_h_Sopron_18702023.csv", sep = ";", head = TRUE)
plot(temp$ta, type = "l")
Sys.Date()
Sys.Date() + 1 # tomorrow
as.Date("1870-01-01")
tempDate <- as.Date("1870-01-01") + 0:(nrow(temp)-1)
tempDate <- as.Date("1869-12-31") + 1:nrow(temp)
plot(tempDate, temp$ta, type = "l")
