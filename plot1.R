# Execute R script to read data
source("readPowerConsumption.R")

plot1 <- function() {
  
  pData <- readData()
  
  # Construct the plot and save it to a PNG file 
  # with a width of 480 pixels and a height of 480 pixels.
  
  png("plot1.png", width=480, height=480)
  hist(pData$Global_active_power, main="Global Active Power", xlab="Global Active Power (kilowatts)",  ylab="Frequency", col="red")
  garbage <- dev.off()
}
