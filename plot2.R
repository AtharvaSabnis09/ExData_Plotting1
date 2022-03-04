setwd("D:/Data Science")
data<-read.table("household_power_consumption.txt",header = TRUE,dec=".",sep = ";",stringsAsFactors=FALSE)
set<-data[data$Date %in% c("1/2/2007","2/2/2007"),]
time<-strptime(paste(set$Date, set$Time, sep=" "), "%d/%m/%Y %H:%M:%S")
gap <- as.numeric(set$Global_active_power)
png("plot2.png", width=480, height=480)
plot(time, gap, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()
