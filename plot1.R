# Read the entire data from the given text file
#filtering the data or only two days
dataFile <- "household_power_consumption.txt"
data <- read.table(dataFile, header=TRUE, sep=";", stringsAsFactors=FALSE)
dataSubSet <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

#get data for Global Active Power
globalActivePower <- as.numeric(dataSubSet$Global_active_power)

#Plot the graph and copy to file
png("plot1.png", width=480, height=480)
hist(globalActivePower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)", ylab="Frequency")
dev.off()
