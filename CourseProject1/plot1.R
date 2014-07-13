source("loadData.R")

data <- loadData("1/2/2007", "2/2/2007")

### plot1
par(mfrow = c(1, 1), mar = c(5, 4, 4, 2))
hist(data[,3], col = "red", main ="Global reactive power"
     , xlab = "Global reactive power (kilowatts)")

dev.copy(png, file = "plot1.png",  width=480, height=480) 
dev.off()
