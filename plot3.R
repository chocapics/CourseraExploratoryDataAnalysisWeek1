hpc <- read.table("household_power_consumption.txt", header = TRUE, sep = ";",
                  stringsAsFactors = FALSE)
subsethpc <- hpc[hpc$Date %in% c("1/2/2007", "2/2/2007"),]

datetime <- strptime(paste(subsethpc$Date, subsethpc$Time, sep=" "), 
                     "%d/%m/%Y %H:%M:%S")
global_avtive_power <- as.numeric(subsethpc$Global_active_power)


png("plot3.png", width = 480, height = 480)
plot(datetime, sub_metering1, type = "l", xlab = "", ylab = "Energy Sub metering")
lines(datetime, sub_metering2, type = "l", col = "red")
lines(datetime, sub_metering3, type = "l", col = "blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_meteing_3"), 
       lty = 1, lwd = 2.5, col = c("black", "red", "blue"))
dev.off()