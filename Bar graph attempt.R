# Load ggplot2
library(ggplot2)
library(readr)


# Create data
data <- read.csv("Data.csv")
  
#  data.frame(
#  name=c("A","B","C","D","E") ,  
#  value=c(3,12,5,18,45)
#)

# Barplot
ggplot(data, aes(x=Week,y=Excess_mortality)) + 
  geom_bar(stat = "identity")
