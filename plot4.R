source("readPowerConsumption.R")
plot4 <- function() {
  pData <- readData()
  pData$Time <- strptime(paste(pData$Date, pData$Time), "%d/%m/%Y %H:%M:%S")
  # Construct the plot and save it to a PNG file 
  # with a width of 480 pixels and a height of 480 pixels.
  
  png("plot4.png", width=480, height=480)
  
  par(mfrow=c(2,2))
  
  # Graph1
  plot(pData$Time, pData$Global_active_power, type="l", xlab="", ylab="Global Active Power")
  
  # Graph2
  plot(pData$Time, pData$Voltage, type="l", xlab="datetime", ylab="Voltage")
  
  # Graph3
  plot(pData$Time, pData$Sub_metering_1, type="l", col="black", xlab="", ylab="Energy sub metering")
  lines(pData$Time, pData$Sub_metering_2, col="red")
  lines(pData$Time, pData$Sub_metering_3, col="blue")
  legend("topright", col=c("black", "red", "blue"), c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1)
  
  # Graph4
  plot(pData$Time, pData$Global_reactive_power, type="n", xlab="datetime", ylab="Global_reactive_power")
  lines(pData$Time, pData$Global_reactive_power)
  
  garbage <- dev.off()
  
}
