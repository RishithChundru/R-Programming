#donut chart

df <- data.frame(value = c(10, 20, 32, 50),
                 group = paste0("G", 1:4))

library(ggplot2)
library(dplyr)

# Increase the value to make the hole bigger
# Decrease the value to make the hole smaller
hsize <- 4

df <- df %>% 
  mutate(x = hsize)

ggplot(df, aes(x = hsize, y = value, fill = group)) +
  geom_col() +
  coord_polar(theta = "y") +
  xlim(c(0.2, hsize+0.8))

# install.packages("ggplot2")
# install.packages("dplyr")
library(ggplot2)
library(dplyr)

# Small hole
hsize <- 1

df <- df %>% 
  mutate(x = hsize)

ggplot(df, aes(x = hsize, y = value, fill = group)) +
  geom_col() +
  coord_polar(theta = "y") +
  xlim(c(0.2, hsize + 0.5)) 
#Ring chart hole size ggplot2

# install.packages("ggplot2")
# install.packages("dplyr")
library(ggplot2)
library(dplyr)

# Big hole
hsize <- 10

df <- df %>% 
  mutate(x = hsize)

ggplot(df, aes(x = hsize, y = value, fill = group)) +
  geom_col() +
  coord_polar(theta = "y") +
  xlim(c(0.2, hsize + 0.5))

