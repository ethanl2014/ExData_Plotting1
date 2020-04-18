plot3_data <- read.table("household_power_consumption.txt", sep=";", header = TRUE, stringsAsFactors=FALSE)
plot3_data <- plot3_data[plot3_data$Date %in% c("1/2/2007","2/2/2007") ,]
date_time <- strptime(paste(plot3_data$Date, plot3_data$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 

png("plot3.png", width=480, height=480)
plot(date_time, plot3_data$Sub_metering_1, type="l", xlab="", ylab="Energy sub metering")
lines(date_time, plot3_data$Sub_metering_2, col = "red")
lines(date_time, plot3_data$Sub_metering_3, col = "blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),col=c("black", "red", "blue"), lty =1)
dev.off()