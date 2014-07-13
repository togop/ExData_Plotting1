source("loadData.R")

data <- loadData("1/2/2007", "2/2/2007")

### plot4

par(mfrow = c(2, 2), mar = c(4, 4, 1, 1))
par(ps = 10, cex = 1, cex.main = 1)

plot(data[,2], data[,3], type="l", xlab = "", ylab="Global reactive power (kilowatts)")

plot(data[,2], data[,5], type="l", xlab = "datetime", ylab="Voltage")

with(data, plot(data[,2], data[,7], type="n", xlab = "", ylab="Energy sub metering", col="black"))
with(data, points(data[,2], data[,7], type="l", col="black"))
with(data, points(data[,2], data[,8], type="l", col="red"))
with(data, points(data[,2], data[,9], type="l", col="blue"))
legend("topright", col=c("black","red","blue"), bty = "n", y.intersp = 0.5,
       text.width = strwidth("Sub_metering_1"),
       legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),
       lwd=0.5, lty=1)
#?legend
plot(data[,2], data[,4], type="l", xlab = "datetime", ylab="Global_reactive_power")

dev.copy(png, file = "plot4.png",  width=480, height=480) 
dev.off()
