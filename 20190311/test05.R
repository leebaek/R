rm(list=ls())

# Sorting 
#attach(mtcars)
# default ascending, -하게 되면 descending
df_car = mtcars
head(mtcars)
mtcars[,1]
colnames(mtcars)
mtcars[order(mpg),]
mtcars[order(mpg, cyl),]
mtcars[order(-mpg),]
detach(mtcars)
# Merging

# Aggregating

# Reshaping

# Subsetting
