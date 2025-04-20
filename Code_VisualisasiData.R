#CODE SCATTER PLOT
data("hydropower")

plot(x = hydropower$Tahun, 
     y = hydropower$TWh,
     main = "Scatter Plot Produksi Hydropower per Tahun di Indonesia",
     xlab = "Tahun",
     ylab = "Produksi (TWh)",
     pch = 16,
     col = "pink")
model <- lm(TWh ~ Tahun, data = hydropower)
abline(model, col = "blue", lwd = 2)


#GEOMETRIC HISTOGRAM
library(ggplot2)
library(ISLR)
data(hydropower)
names(hydropower)

ggplot(hydropower, aes(x = TWh,
                       color = Keterangan,
                       fill = Keterangan)) + ggtitle("Histogram Produksi Hydropower per Tahun di Indonesia") +
  geom_histogram(bins = 50, alpha = 0.6)


#GEOMETRIC DENSITY
library(ggplot2)
library(ISLR)
data(hydropower)
names(hydropower)

ggplot(hydropower, aes(x = TWh,
                       color = Keterangan,
                       fill = Keterangan)) + ggtitle("Density Produksi Hydropower per Tahun di Indonesia") +
  geom_density()