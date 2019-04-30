

#Several Key Functions:
#Filter observations (filter())
#Arrange the rows (arrange())
#Select variables (select())
#Create new variables (mutate())
#Summarise values (summarise())
#Distinct function (distinct ())
#Rank variables
#Bind variables 


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

#Distinct Function
d1 <- distinct(flights, dep_time)  # remove dupicated values rows from data set 

#Rank the data
q1 <- quantile(faithful$eruptions, 0.25)  # nth quantile
round(q1,2) # roundup data
min()  # minimum value 
max()  # maximum value

#Bind Function
c_all <- bind_cols(c1, c2, c3, c4)  # bind four data sets by columns
r_all <- bind_rows(r1, r2, r3, r4)  # bind four data sets by rows




























