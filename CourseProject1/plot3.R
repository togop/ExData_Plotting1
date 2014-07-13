source("loadData.R")

data <- loadData("1/2/2007", "2/2/2007")

### plot3

par(mfrow = c(1, 1), mar = c(5, 4, 4, 2))
par(ps = 10, cex = 1, cex.main = 1)

with(data, plot(data[,2], data[,7], type="n", xlab = "", ylab="Energy sub metering", col="black"))
with(data, points(data[,2], data[,7], type="l", col="black"))
with(data, points(data[,2], data[,8], type="l", col="red"))
with(data, points(data[,2], data[,9], type="l", col="blue"))
legend("topright", col=c("black","red","blue"), y.intersp = 0.5, 
       text.width = strwidth("Sub_metering_1"),
       legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),
       lwd=1, lty=1)
dev.copy(png, file = "plot3.png",  width=480, height=480) 
dev.off()

