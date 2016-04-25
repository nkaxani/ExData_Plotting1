odata <-  read.delim("c:\\local\\household_power_consumption.txt",header=TRUE,sep=";",na.strings = "?")
odata <-subset(odata,Date=="1/2/2007" | Date=="2/2/2007")
odata$Date <- strptime(paste(odata$Date,odata$Time),"%d/%m/%Y %H:%M:%S")
odata$Global_active_power <- as.numeric(odata$Global_active_power)

png(filename = "c:\\Plot1.png",width = 480,height = 480,units = "px")
hist(odata$Global_active_power,breaks=12,col="red",main="Global Active Power",xlab="Global Active Power (kilowatts)")
dev.off()