## Coursera: Exploratory Data Analysis
## Plotting Project - plot 4
## Last Edited: 19 Aug 2020

source("ReadingData.R") #Reads the .txt data into a data frame 

# Calling graphics device 
png(file = "plot4.png",width = 480, height = 480)

# Setting the Plot Area
par(mfrow = c(2,2))

# Plotting panel 1 (top left)
with(electric_data, plot(date_time, Global_active_power, type = "n",
                         xlab = "", ylab = "Global Active Power"))
with(electric_data, lines(date_time, Global_active_power, col="black"))

# Plotting panel 2 (top right)
with(electric_data, plot(date_time, Voltage, type = "n",
                         xlab = "datetime", ylab = "Voltage"))
with(electric_data, lines(date_time, Voltage, col="black"))

# Plotting panel 3 (bottom left)
with(electric_data, plot(date_time,Sub_metering_1, type = "n",
                         xlab = "", ylab = "Energy sub metering"))
with(electric_data, lines(date_time,Sub_metering_1, col="black"))
with(electric_data, lines(date_time,Sub_metering_2,col="red"))
with(electric_data, lines(date_time,Sub_metering_3, col="blue"))
legend("topright", pch = "-", col = c("black","red","blue"),
       legend = c("Sub_metering_1", "Sub_metering_2","Sub_metering_3"))

# Plotting panel 4 (bottom right)
with(electric_data, plot(date_time, Global_reactive_power, type = "n",
                         xlab = "datetime", ylab = "Global Reactive Power"))
with(electric_data, lines(date_time, Global_reactive_power, col="black"))

# Closing the graphics device 
dev.off()
