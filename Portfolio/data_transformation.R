

#5 key functions:
#Filter observations by their values (filter()).
#Arrange the rows (arrange()).
#Select variables by their names (select()).
#Create new variables with functions of existing variables (mutate()).
#Summarise values (summarise()).

#An example for filter()
filter(flights, month == 1, day == 1)

#The above code does not change input data, 
jan1 <- filter(flights, month == 1, day == 1)
#If you want to save the data, use parentheses
(oct25 <- filter(flights, month == 10, day == 25))

#Use = instead of == when doing comparison
filter(flights, month = 1)

#Be careful with floating numbers, use near() instead of ==
sqrt(2) ^ 2 == 2
1 / 9 * 9 == 1
near(sqrt(2) ^ 2,  2)
near(1 / 9 * 9, 1)

#Check if a value is missing 
is.na(x)

#filter() doesn't include NAs, so if you want to include them
df <- tibble(x = c(1, NA, 6))
filter(df, x > 1)

filter(df, is.na(x) | x > 1)































