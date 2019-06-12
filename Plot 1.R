hpc <- read.table("household_power_consumption.txt", header = TRUE, sep = ";",
                  stringsAsFactors = FALSE)
subsethpc <- hpc[hpc$Date %in% c("1/2/2007", "2/2/2007"),]