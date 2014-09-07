source("readPowerConsumption.R")
plot3 <- function() {
  pData <- readData()
  pData$Time <- strptime(paste(pData$Date, pData$Time), "%d/%m/%Y %H:%M:%S")
  # Construct the plot and save it to a PNG file 
  # with a width of 480 pixels and a height of 480 pixels.
  png("plot3.png", width=480, height=480)
  plot(pData$Time, pData$Sub_metering_1, type="l", col="black", xlab="", ylab="Energy sub metering")
  lines(pData$Time, pData$Sub_metering_2, col="red")
  lines(pData$Time, pData$Sub_metering_3, col="blue")
  legend("topright", col=c("black", "red", "blue"), c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1)
  garbage <- dev.off()
}
