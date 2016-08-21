UCIData <- "C:/Users/Dan/Desktop/Coursera R/1st Graph Assigment/household_power_consumption.txt"
UCI <- read.table(UCIData, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
SSet_UCI <- UCI[UCI$Date %in% c("1/2/2007","2/2/2007") ,]
datetime <- strptime(paste(SSet_UCI$Date, SSet_UCI$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
GlobalAP <- as.numeric(SSet_UCI$Global_active_power)
plot(datetime, GlobalAP, type="l", xlab="", ylab="Global Active Power (kilowatts)")

