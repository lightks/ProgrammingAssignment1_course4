##Reading dataset
powerr <- read.csv('/home/sara/Work/Courses/Coursera/Data_Science_Specialization/Course4/Week1/Course_project/data/household_power_consumption.txt', header = TRUE, sep = ";")

##Extracting the desired date range.
powerr2 = subset(powerr, powerr$Date == "1/2/2007" | powerr$Date == "2/2/2007")

##assigning the dataset as numeric and stripping away factors
powerr2$Global_active_power <- as.numeric(as.character(powerr2$Global_active_power))
powerr2$Global_reactive_power <- as.numeric(as.character(powerr2$Global_reactive_power))
powerr2$Voltage <- as.numeric(as.character(powerr2$Voltage))

##assigning the dataset as character and stripping away factors
powerr2$Date3 <- as.character(powerr2$Date)
powerr2$Time3<- as.character(powerr2$Time)

##setting the time
powerr2$datetime <- strptime(paste(powerr2$Date3, powerr2$Time3), "%d/%m/%Y %H:%M:%S")

##Generating the image
plot(x=powerr2$datetime, y=powerr2$Global_active_power,
     ylab='Global Active power (kilowatts)',
     xlab='  ',
     type = "l")
dev.off()

