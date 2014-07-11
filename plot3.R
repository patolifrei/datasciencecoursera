# Explanatory Data Analysis - course project 1 - plot 3
filename <- "household_power_consumption.txt"
powerCons <- read.table(filename, header=TRUE, sep=";", na.strings = "?")
powerCons$Date <- as.Date(powerCons$Date, format = "%d/%m/%Y")
powerConsDF<-subset(powerCons, Date == "2007-02-01" | Date == "2007-02-02")
par(mfrow = c(1,1))
plot(as.POSIXct(paste(powerConsF$Date, powerConsF$Time)), powerConsF$Sub_metering_1, type="l", xlab="", ylab="Energy sub metering")
lines(as.POSIXct(paste(powerConsF$Date, powerConsF$Time)), powerConsF$Sub_metering_2, type="l", col="red")
lines(as.POSIXct(paste(powerConsF$Date, powerConsF$Time)), powerConsF$Sub_metering_3, type="l", col="blue")
legend("topright", legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), lty=1, col=c("black","red","blue"))
dev.copy(png, file = "plot3.png", width = 480, height = 480)
dev.off()
