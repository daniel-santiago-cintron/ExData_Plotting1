
UCIData <- "C:/Users/Dan/Desktop/Coursera R/1st Graph Assigment/household_power_consumption.txt"
UCI <- read.table(UCIData, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
SSet_UCI <- UCI[UCI$Date %in% c("1/2/2007","2/2/2007") ,]
GlobalAP <- as.numeric(SSet_UCI$Global_active_power)
hist(GlobalAP, col="purple", main="Global Active Power", xlab="Global Active Power (kilowatts)")

