##Plot number 3 - the submetering plot.

##Reading dataset
powerr <- read.csv('/home/sara/Work/Courses/Coursera/Data_Science_Specialization/Course4/Week1/Course_project/data/household_power_consumption.txt', header = TRUE, sep = ";")

##Extracting the desired date range.
powerr2 = subset(powerr, powerr$Date == "1/2/2007" | powerr$Date == "2/2/2007")

##assigning the dataset as numeric and stripping away factors
powerr2$Sub_metering_1 <- as.numeric(as.character(powerr2$Sub_metering_1))
powerr2$Sub_metering_2 <- as.numeric(as.character(powerr2$Sub_metering_2))
powerr2$Sub_metering_3 <- as.numeric(as.character(powerr2$Sub_metering_3))

##assigning the dataset as character and stripping away factors
powerr2$Date3 <- as.character(powerr2$Date)
powerr2$Time3<- as.character(powerr2$Time)

##setting the time
powerr2$datetime <- strptime(paste(powerr2$Date3, powerr2$Time3), "%d/%m/%Y %H:%M:%S")

##Generating the image
plot(x=powerr2$datetime, y=powerr2$Sub_metering_1,
     ylab='Energy sub metering',
     xlab='  ',
     type = "l")
legend("topright" , lty = 1, col = c("black","red","blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
lines(x= powerr2$datetime, y = powerr2$Sub_metering_2, col = "red")
lines(x= powerr2$datetime, y = powerr2$Sub_metering_3, col = "blue")