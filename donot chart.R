# Load necessary libraries
library(ggplot2)
library(dplyr)

# Sample data (replace with your own data)
df <- data.frame(
  value = c(10, 30, 32, 28),
  #group = paste0("G", 1:4)
  group = c('G1','G2','G3','G4')
)
df
# Set the hole size (adjust as needed)
hsize <- 4
# df <- df %>%
#   mutate(x=hsize)
# df
df<-mutate(df,x=hsize)
df
# Create the donut plot
ggplot(df, aes(x = hsize, y = value, fill = group)) +
  geom_col() +
  coord_polar(theta = "y") +
  xlim(c(0.2, hsize + 0.8))
