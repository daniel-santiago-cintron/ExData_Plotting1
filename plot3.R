UCIData <- "C:/Users/Dan/Desktop/Coursera R/1st Graph Assigment/household_power_consumption.txt"
UCI <- read.table(UCIData, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
SSet_UCI <- UCI[UCI$Date %in% c("1/2/2007","2/2/2007") ,]
datetime <- strptime(paste(SSet_UCI$Date, SSet_UCI$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
GlobalAP <- as.numeric(SSet_UCI$Global_active_power)
SM1 <- as.numeric(SSet_UCI$Sub_metering_1)
SM2 <- as.numeric(SSet_UCI$Sub_metering_2)
SM3 <- as.numeric(SSet_UCI$Sub_metering_3)
plot(datetime, SM1, type="l", ylab="Energy Submetering", xlab="")
lines(datetime, SM2, type="l", col="red")
lines(datetime, SM3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2.5, col=c("black", "red", "blue"))