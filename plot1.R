### Peer-graded Assignment: Course Project 1 ###
setwd("C:/Users/alfre/Google Drive/cursos/Data Science Specialization/4-Exploratory Data Analysis/1-Week 1/7-course project 1")
getwd()
data <- read.table("household_power_consumption.txt", header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
View(data)
data$Date <- as.Date(data$Date)

#Plot Number 1
GAP<-as.numeric(data$Global_active_power, na.rm = TRUE)
hist(GAP, col ="red", xlab = "Global Active Power (kilowatts)", ylab = "Frequency", main = paste("Global Active Power"))
dev.copy(png,file = "plot1.png")
dev.off()
