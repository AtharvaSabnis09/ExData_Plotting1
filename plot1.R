setwd("D:/Data Science")
data<-read.table("household_power_consumption.txt",header = TRUE,dec=".",sep = ";",stringsAsFactors=FALSE)
set<-data[data$Date %in% c("1/2/2007","2/2/2007"),]
gap<-as.numeric(set$Global_active_power)
png("plot1.png", width=480, height=480)
hist(gap, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()

