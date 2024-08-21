
# %>% is a special operator in R found 
#in the magrittr and tidyr packages. 
# %>% lets you pass objects to functions elegantly, 
#and helps you make your code more readable. 
#The following two lines of code are equivalent.

# Without the %>% operator

View(mtcars)
a <- filter(mtcars,carb>1)
View(a)
b <- group_by(a, cyl)
View(b)
c <- summarise(b, Avg_mpg = mean(mpg))
c
d <- arrange(c, desc(Avg_mpg))
print(d)


# With the %>% operator
mtcars %>%
  filter(carb > 1) %>%
  group_by(cyl) %>%
  summarise(Avg_mpg = mean(mpg)) %>%
  arrange(desc(Avg_mpg))

#********************************************
View(starwars)
dim(starwars)
#we can select all character with light skin color and brown eyes with:
View(starwars %>% filter(skin_color == "light", eye_color == "brown"))

#This is roughly equivalent to this base R code:
starwars[starwars$skin_color == "light" & starwars$eye_color == "brown", ]
#arrange() works similarly to filter() except that instead of filtering or selecting rows, 
#it reorders them.
View(starwars %>% arrange(height))
View(starwars %>% arrange(height,mass))

#Use desc() to order a column in descending order:
starwars %>% arrange(desc(height))
#Choose rows using their position with slice()
#slice() lets you index rows by their (integer) locations. 
#It allows you to select, remove, and duplicate rows.
#We can get characters from row numbers 5 through 10.
starwars%>%slice(5:10)
#slice_sample() randomly selects rows. 
#Use the option prop to choose a certain proportion of the cases.
starwars %>% slice_sample(n = 5)
starwars %>% slice_sample(prop = 0.1)
#slice_min() and slice_max() select rows with highest or lowest values of a variable. 
#Note that we first must choose only the values which are not NA.
starwars %>%
  filter(!is.na(height)) %>%
  slice_max(height, n = 3)
#Select columns with select()
starwars %>% select(hair_color, skin_color, eye_color)
# Select all columns between hair_color and eye_color (inclusive)
starwars %>% select(hair_color:eye_color)
# Select all columns except those from hair_color to eye_color (inclusive)
starwars %>% select(!(hair_color:eye_color))
# Select all columns ending with color
starwars %>% select(ends_with("color"))
#Add new columns with mutate()
starwars %>% mutate(height_m = height / 100)
