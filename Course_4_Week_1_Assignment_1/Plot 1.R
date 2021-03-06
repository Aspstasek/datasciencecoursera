library(dplyr)
data<-read.table("household_power_consumption.txt",header = TRUE,sep = ";",stringsAsFactors = FALSE)
selected<-filter(data, data$Date == "1/2/2007"|data$Date == "2/2/2007")
hist(as.numeric(selected$Global_active_power),xlab = "Global Active Power(kilowatts)", col = "red", main = "Global Active Power")
dev.copy(png, file = "Plot 1.png")
dev.off()
