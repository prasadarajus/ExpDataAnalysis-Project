source("readPowerConsumption.R")
plot2 <- function() {
  
  pData <- readData()
  pData$Time <- strptime(paste(pData$Date, pData$Time), "%d/%m/%Y %H:%M:%S")
  # Construct the plot and save it to a PNG file 
  # with a width of 480 pixels and a height of 480 pixels.
  
  png("plot2.png", width=480, height=480)
  
  plot(pData$Time, pData$Global_active_power, type="l", xlab="",  ylab="Global Active Power (kilowatts)")
  
  garbage <- dev.off()
}
