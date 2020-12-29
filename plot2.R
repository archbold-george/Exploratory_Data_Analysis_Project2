setwd("~/Desktop/coursera/Exploratory_Data_Analysis/project1/data_raw")
powerDT <- data.table::fread(input = "household_power_consumption.txt", na.strings="?" )
power <- power[which(power$Date == '2/2/2007' | power$Date=='1/2/2007'),]
power$POSIX <-as.POSIXlt.character(paste(power$Date,power$Time),format = "%d/%m/%Y %H:%M:%S")
png(filename="plot2.png",width=480, height=480)
plot(x=power$POSIX ,y=power$Global_active_power, type = 'l', xlab='',ylab = 'Global Active Power (kilowatts)')
dev.off()
