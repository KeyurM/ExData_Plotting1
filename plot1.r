hist(subdata$Global_active_power, main = "Global Active Power", xlab = "Global Active Powe-Kw")

dev.copy(png,"plot1.png", width=480, height=480)
dev.off()
