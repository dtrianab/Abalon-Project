#Directory
setwd('C:/Users/DTriana/Google Drive/E-Learning/R/Abalon-Project')

#Libraries
library('ProjectTemplate')
library(corrplot)
library("PerformanceAnalytics")
load.project()

#Load Data
abalon_data<-read.csv("./data/abalone.data", fill = TRUE,header = FALSE)
dim(abalon_data)
# Name / Data Type / Measurement Unit / Description
# -----------------------------
# Sex / nominal / -- / M, F, and I (infant)
# Length / continuous / mm / Longest shell measurement
# Diameter / continuous / mm / perpendicular to length
# Height / continuous / mm / with meat in shell
# Whole weight / continuous / grams / whole abalone
# Shucked weight / continuous / grams / weight of meat
# Viscera weight / continuous / grams / gut weight (after bleeding)
# Shell weight / continuous / grams / after being dried
# Rings / integer / -- / +1.5 gives the age in years
colnames(abalon_data) <- c("Sex","Length","Diameter","Height","Whole_weight","Shucked_weight","Viscera_weight","Shell_weight","Rings")
#"pearson", "kendall", "spearman"
tail(abalon_data, n=5)

correlation_coeff <- cor(abalon_data[c(-1)], method="pearson")
correlation_coeff


corrplot(correlation_coeff, type = "upper", order = "hclust", 
         tl.col = "black", tl.srt = 45)

# Correlation Map Plot
png(filename = "./graphs/Correlation_map.png",
    width = 960, height = 480, units = "px", pointsize = 12)
chart.Correlation(abalon_data[c(-1)], histogram=TRUE)
rect(1, 5, 3, 7, col = "white")
dev.off()
