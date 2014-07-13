loadData <- function(dateFrom, dateTo) {
  temp <- tempfile()

  download.file("http://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip",temp)
  fileData <- read.csv(unz(temp, "household_power_consumption.txt"), sep=";", na.strings="?", header = TRUE )
  
  # you can use this line if you downloaded the household_power_consumption.txt manually
  #data <- read.csv(file = file.path(".", "household_power_consumption.txt"), sep=";", na.strings="?", header = TRUE)
  
  unlink(temp)

  data <- fileData[fileData$Date==dateFrom | fileData$Date==dateTo,] 
  
  data$Time <- strptime(paste(data$Date, data$Time),'%d/%m/%Y %H:%M:%S')
  data$Date <- as.Date(data$Date, format = "%d/%m/%Y")
  
  return(data)
}

