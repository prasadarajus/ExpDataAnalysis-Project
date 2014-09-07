# Using sqldf package 
require(sqldf)

readData <- function() { 
  # Read data from file and filter data for specific dates
  filteredData  <- read.csv.sql("household_power_consumption.txt", header = TRUE, sep = ";",colClasses=c("character", "character", rep("numeric",7)), "select * from file where Date IN('1/2/2007','2/2/2007') ")
  return(filteredData)
}
