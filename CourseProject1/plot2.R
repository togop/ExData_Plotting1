source("loadData.R")

data <- loadData("1/2/2007", "2/2/2007")

### plot2

par(mfrow = c(1, 1), mar = c(5, 4, 4, 2))
plot(data[,2], data[,3], type="l", xlab = "", ylab="Global reactive power (kilowatts)")
dev.copy(png, file = "plot2.png") 
dev.off()
