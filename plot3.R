## Coursera: Exploratory Data Analysis
## Plotting Project - plot 3
## Last Edited: 19 Aug 2020

source("ReadingData.R") #Reads the .txt data into a data frame 

# Calling graphics device 
png(file = "plot3.png",width = 480, height = 480)

# calling a new graph using plot() function
with(electric_data, plot(date_time,Sub_metering_1, type = "n",
                         xlab = "", ylab = "Energy sub metering"))
# lines() function only adds to existing graph 
with(electric_data, lines(date_time,Sub_metering_1, col="black"))
with(electric_data, lines(date_time,Sub_metering_2,col="red"))
with(electric_data, lines(date_time,Sub_metering_3, col="blue"))

# Setting up the legend with respective color scheme
legend("topright", pch = "-", col = c("black","red","blue"),
       legend = c("Sub_metering_1", "Sub_metering_2","Sub_metering_3"))

# Closing the graphics device 
dev.off()

