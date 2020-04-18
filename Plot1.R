plot1_data <- read.table("household_power_consumption.txt", sep=";", header = TRUE, stringsAsFactors=FALSE)
plot1_data <- subset(plot1_data, as.Date(plot1_data$Date) == as.Date("01-02-2007") | as.Date(plot1_data$Date) == as.Date("02-02-2007"))

png("plot1.png", width=480, height=480)
hist(as.numeric(plot1_data$Global_active_power), col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()