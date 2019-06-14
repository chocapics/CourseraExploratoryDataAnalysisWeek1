hpc <- read.table("household_power_consumption.txt", header = TRUE, sep = ";",
                  stringsAsFactors = FALSE)
subsethpc <- hpc[hpc$Date %in% c("1/2/2007", "2/2/2007"),]

datetime <- strptime(paste(subsethpc$Date, subsethpc$Time, sep=" "), 
                     "%d/%m/%Y %H:%M:%S")
GlobalActivePower <- as.numeric(subsethpc$Global_active_power)
png("plot2.png", width = 480, height = 480)
plot(datetime, GlobalActivePower, type = "l", xlab = "", 
     ylab = "Global Active Power (kilowatts)")
dev.off()