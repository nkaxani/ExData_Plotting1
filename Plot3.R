odata <-  read.delim("c:\\local\\household_power_consumption.txt",header=TRUE,sep=";",na.strings = "?")
odata <-subset(odata,Date=="1/2/2007" | Date=="2/2/2007")
odata$Date <- strptime(paste(odata$Date,odata$Time),"%d/%m/%Y %H:%M:%S")
odata$Global_active_power <- as.numeric(odata$Global_active_power)



png(filename = "c:\\local\\Plot3.png",width = 480,height = 480,units = "px")
plot(odata$Date,odata$Sub_metering_1,type="n",ylab="Energy sub metering")
lines(odata$Date,odata$Sub_metering_1,col="black",pch=22)
lines(odata$Date,odata$Sub_metering_2,col="red",pch=22)
lines(odata$Date,odata$Sub_metering_3,col="blue",pch=22)

legend("topright",lty=1,col=c("black","red","blue"),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
dev.off()