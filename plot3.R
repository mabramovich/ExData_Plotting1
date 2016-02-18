householdpower <- read.table("./household_power_consumption.txt", sep = ";", header = TRUE, na.strings = "?")
householdpower <- householdpower[householdpower$Date == '2/2/2007' | householdpower$Date == '1/2/2007',]

datetime_string <- paste(householdpower$Date, householdpower$Time, sep = " ")
datetime <- strptime(datetime_string, format = "%d/%m/%Y %H:%M:%S")

windows()
plot(datetime, householdpower$Sub_metering_1, type = "l",
     col = "black", xlab = "", ylab = "Energy sub metering")
lines(datetime, householdpower$Sub_metering_2, type = "l", col = "red")
lines(datetime, householdpower$Sub_metering_3, type = "l", col = "blue")

legend("topright", c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'), 
       lty = c(1,1,1), col = c('black','red', 'blue'))

dev.copy(png, file = "plot3.png", width = 480, height = 480)
dev.off()