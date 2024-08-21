#Bollinger band were developed by technical trader John Bollinger
# designed to give inverstor a high probability of identifying the when an asset is oversold or overbought.
#Quantmod stands for quantitative financial modelling framework.
# it has two main function 1. download data 2. charting

# installing package
install.packages("quantmod")
library("quantmod")

# downloading the data
# if you want to download the data from yahoo or google, default is yahoo
getSymbols("AAPL") # downloading data for apple
head(AAPL, n=3) # it will display management related content

# base chart i.e., line chart
# the line chart will display the closing price of the stock
#chartSeries function is used for representing the statistical information
chartSeries(AAPL,
            type="line",
            theme = chartTheme('white'))

# Bollinger band will create the area that surrounds the trend 
# within which the price movement doesnot indicate the formation of new trend

addBBands(n=20, sd=2)
# n represents number of moving average and sd represents the standart deviation
# it will draw some boundaries within the fluctuation

