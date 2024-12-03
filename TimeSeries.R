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
## Package for time-series work
library(xts)
tempxts <- xts(temp$ta, tempDate)
plot(tempxts)
## Select time
plot(tempxts['2023'])
plot(tempxts['2020/2023'])
plot(tempxts['2022-11-01/2023-10-31'], col = "red")
## yearly mean
yearlytemp <- apply.yearly(tempxts, mean)
plot(yearlytemp)
## Get the linear trend
yearlytemp.df <- data.frame(Date = index(yearlytemp),
                            Temp = coredata(yearlytemp))
yearlytemp.df$numericDate <- as.numeric(format(yearlytemp.df$Date, format = "%Y"))
yearlytemp.lm <- lm(Temp ~ Date, yearlytemp.df)
summary(yearlytemp.lm)
plot(yearlytemp.lm,1)
## Get quadratic trend for PhD
yearlytemppoly1.lm <- lm(Temp ~ numericDate + I(numericDate^2), yearlytemp.df)
summary(yearlytemppoly1.lm)
plot(yearlytemppoly1.lm,1)
## Look the result
plot(yearlytemp.df[,c("Date","Temp")], type = "l", xaxs = "i")
abline(yearlytemp.lm, lwd = 2)
lines(yearlytemp.df[,"Date"],predict(yearlytemppoly1.lm), col = "red")
## Moving average with basic r ts
temp.ts <- ts(yearlytemp.df$Temp, 1870)
plot(temp.ts, ylab = "Temperature")
temp3yr <- filter(temp.ts, c(1/3, 1/3, 1/3))
lines(temp3yr, col = "red")
temp5yr <- filter(temp.ts, c(1/5, 1/5, 1/5, 1/5, 1/5))
temp5yr <- filter(temp.ts, rep(1/5,5))
lines(temp5yr, col = "blue")
temp9yr <- filter(temp.ts, rep(1/9, 9))
lines(temp9yr, col = "orange", lwd = 3)
## Moving average for the original data
orits <- ts(temp$ta)
temp365days <- filter(orits, rep(1/365, 365))
plot(orits)
lines(temp365days, col="orange")
temp2yrs <- filter(orits, rep(1/(365*2), 2*365))
lines(temp2yrs, col="red", lwd = 2)
