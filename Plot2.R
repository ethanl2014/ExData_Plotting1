plot2_data <- read.table("household_power_consumption.txt", sep=";", header = TRUE, stringsAsFactors=FALSE)
plot2_data <- plot2_data[plot2_data$Date %in% c("1/2/2007","2/2/2007") ,]
date_time <- strptime(paste(plot2_data$Date, plot2_data$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 

png("plot2.png", width=480, height=480)
plot(date_time, as.numeric(plot2_data$Global_active_power), type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()