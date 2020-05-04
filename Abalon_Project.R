setwd('C:/Users/DTriana/Google Drive/E-Learning/R')
abalon_data<-read.csv("./Abalon-Project/abalone.data", fill = TRUE,header = FALSE)
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
colnames(abalon_data)

