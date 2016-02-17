
# Read the entire data from the given text file
dataFile <- "household_power_consumption.txt"
data <- read.table(dataFile, header=TRUE, sep=";", stringsAsFactors=FALSE)
dataSubSet <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

#convert data format
globalActivePower <- as.numeric(dataSubSet$Global_active_power)

## read in date/time info in format 'd/m/y h:m:s'
datetime <- paste(dataSubSet$Date, dataSubSet$Time, sep=" ")
datetime <- strptime(datetime, "%d/%m/%Y %H:%M:%S")

#initialize and plot the graph
png("plot2.png", width=480, height=480)
plot(datetime, globalActivePower, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()