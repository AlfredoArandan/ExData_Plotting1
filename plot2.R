data <- read.table("household_power_consumption.txt", header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
head(data)
subSetData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]
datetime <- strptime(paste(subSetData$Date, subSetData$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
GAP<-as.numeric(subSetData$Global_active_power)
plot(datetime, GAP, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.copy(png,file = "plot2.png")
dev.off()
