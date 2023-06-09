# Load ggplot2
library(ggplot2)

# Create data
data <- read.csv("Data.csv")



ggplot(data, aes(Week, mortality, group=Year)) +
  geom_bar(stat = "identity", fill = "Red", width = 1) +
  labs(x = "Week", y = "Excess mortality", title = "Bar Chart") +
  theme_minimal() +
  ylim(-0.1, 0.8) +
  facet_grid(.~Year, scales = "free", switch = "x", space = "free_x") + 
  theme(strip.placement = "outside", strip.text.x = element_text(margin = margin(0, 0, 0, 0)))+
  scale_x_continuous(breaks = seq(1, 52, 2))+
  scale_y_continuous(breaks = seq(-0.1, 0.8, 0.1))  


