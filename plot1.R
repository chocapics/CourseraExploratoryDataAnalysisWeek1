hpc <- read.table("household_power_consumption.txt", header = TRUE, sep = ";",
                  stringsAsFactors = FALSE)
subsethpc <- hpc[hpc$Date %in% c("1/2/2007", "2/2/2007"),]

GlobalActivePower <- as.numeric(subsethpc$Global_active_power)
png("plot1.png", width = 480, height = 480)
hist(GlobalActivePower, main = "Global Active Power", col = "red", 
     xlab = "Global Active Power (Kilowatts)")
dev.off()