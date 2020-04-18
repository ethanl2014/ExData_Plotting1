plot4_data <- read.table("household_power_consumption.txt", sep=";", header = TRUE, stringsAsFactors=FALSE)
plot4_data <- plot4_data[plot4_data$Date %in% c("1/2/2007","2/2/2007") ,]
date_time <- strptime(paste(plot4_data$Date, plot4_data$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 

png("plot4.png", width=480, height=480)
par(mfrow = c(2, 2))

plot(date_time, as.numeric(plot4_data$Global_active_power), type="l", xlab="", ylab="Global Active Power (kilowatts)")

plot(date_time, as.numeric(plot4_data$Voltage), type="l", xlab="datetime", ylab="Voltage")

plot(date_time, plot4_data$Sub_metering_1, type="l", xlab="", ylab="Energy sub metering")
lines(date_time, plot4_data$Sub_metering_2, col = "red")
lines(date_time, plot4_data$Sub_metering_3, col = "blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),col=c("black", "red", "blue"), lty =1)

plot(date_time, as.numeric(plot4_data$Global_reactive_power), type="l", xlab="datetime", ylab="Global_reactive_power")

dev.off()