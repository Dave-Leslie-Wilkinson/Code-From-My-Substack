library(quantmod)
getSymbols("SHOP")
chartSeries(SHOP,
            type="line",
            name="Shopify Stock Price & Moving Averages",
            subset = "2020-08-30::2021-08-30")
addEMA(n=10, on=1, col="blue")
addEMA(n=50, on=1, col="red")
addEMA(n=200, on=1, col="yellow")
