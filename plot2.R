householdpower <- read.table("./household_power_consumption.txt", sep = ";", header = TRUE, na.strings = "?")
householdpower <- householdpower[householdpower$Date == '2/2/2007' | householdpower$Date == '1/2/2007',]

datetime_string <- paste(householdpower$Date, householdpower$Time, sep = " ")
datetime <- strptime(datetime_string, format = "%d/%m/%Y %H:%M:%S")

windows()
plot(datetime, householdpower$Global_active_power, type = "l",
     xlab = "", ylab = "Global Active Power (kilowatts)")
dev.copy(png, file = "plot2.png", width = 480, height = 480)
dev.off()