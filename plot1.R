householdpower <- read.table("./household_power_consumption.txt", sep = ";", header = TRUE, na.strings = "?")
householdpower <- householdpower[householdpower$Date == '2/2/2007' | householdpower$Date == '1/2/2007',]

windows()
hist(householdpower$Global_active_power, col = 'red', 
    xlab = "Global Active Power (kilowatts)", 
    main = "Global Active Power")
dev.copy(png, file = "plot1.png", width = 480, height = 480)
dev.off()