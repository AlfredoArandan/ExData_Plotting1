#Plot Number 3
data <- read.table("household_power_consumption.txt", header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
subSetData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]
datetime <- strptime(paste(subSetData$Date, subSetData$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
ESM1<-as.numeric(subSetData$Sub_metering_1)
ESM2<-as.numeric(subSetData$Sub_metering_2)
ESM3<-as.numeric(subSetData$Sub_metering_3)
with(subSetData,plot(datetime,ESM1,type = "n", ylab="Energy Submetering", xlab = ""))
with(subSetData,points(datetime,ESM1,type="l", col = "black"))
with(subSetData,points(datetime,ESM2,type="l", col = "red"))
with(subSetData,points(datetime,ESM3,type="l", col = "blue"))
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2.5, col=c("black", "red", "blue"))
dev.copy(png,file = "plot3.png")
dev.off()
