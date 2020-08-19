## Coursera: Exploratory Data Analysis
## Plotting Project - plot 2
## Last Edited: 19 Aug 2020

source("ReadingData.R") #Reads the .txt data into a data frame 

# Calling graphics device 
png(file = "plot2.png",width = 480, height = 480)

# Calling a new graph using plot() function
# cex = 0 sets the pch weight to 0 (i.e. only showing line between dots)
with(electric_data, plot(date_time,Global_active_power, pch = 20, cex = 0,
                         xlab = "", ylab = "Global Active Power (kilowatts)"))
with(electric_data, lines(date_time,Global_active_power))

# Closing the graphics device 
dev.off()
