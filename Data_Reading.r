getwd()

data <- read.table("household_power_consumption.txt", header = TRUE, sep = ";", na.strings = "?")

View(data)


data$Date <- as.Date(data$Date, "%d/%m/%Y")
class(data$Date)
subdata <- subset(data, Date >= as.Date("2007-2-1") & Date <= as.Date("2007-2-2"))
View(subdata)

as.numeric(subdata$Global_active_power, subdata$Global_reactive_power, subdata$Voltage,
           subdata$Global_intensity, subdata$Sub_metering_1, subdata$Sub_metering_2,
           subdata$Sub_metering_3)

