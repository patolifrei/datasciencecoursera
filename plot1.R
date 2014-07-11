# Explanatory Data Analysis - course project 1 - plot 1
filename <- "household_power_consumption.txt"
powerCons <- read.table(filename, header=TRUE, sep=";", na.strings = "?")
powerCons$Date <- as.Date(powerCons$Date, format = "%d/%m/%Y")
powerConsDF<-subset(powerCons, Date == "2007-02-01" | Date == "2007-02-02")
par(mfrow = c(1,1))
hist(powerConsF$Global_active_power, col="red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)")
dev.copy(png, file = "plot1.png", width = 480, height = 480)
dev.off()
