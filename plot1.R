##Assignment no. 1 - recreate the red histogram for "Global Active Power".

library(dplyr)

##Read the dataset.
df <- read.table(file="/home/sara/Work/Courses/Coursera/Data_Science_Specialization/Course4/Week1/Course_project/data/household_power_consumption.txt",header=TRUE,sep=";")
Sys.setlocale("LC_TIME", "English")
##Extract only the required times (since the memory on this machine is ok, this is the simplest way to do it)
df_select <- subset(df,Date=="1/2/2007"|Date=="2/2/2007",select=c(1,3))
hist(as.numeric(as.character(df_select$Global_active_power)), main="Global Active Power", col="red", xlab="Global Active Power (kilowatts)", ylab="Frequency", ylim=c(0,1300))

dev.off()
