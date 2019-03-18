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
df1 <- data.frame(mtcars[1:10,], mtcars[11:20,])
df1

# Aggregating
attach(mtcars)
aggregate(mtcars, by=list(cyl,vs), FUN=mean, na.rm = TRUE)
str(mtcars)
detach(mtcars)

# Reshaping
mtcars
dim(mtcars)
tmp <- t(mtcars) # transpose
dim(tmp)

# * reshape

tmp_data <- data.frame(
  id = c(1,1,2,2),
  time = c(1,2,1,2),
  x1 = c(5,3,6,2),
  x2 = c(6,5,1,4)
)

library(reshape2)
tmp_data
tmp_data2 <- melt(tmp_data, id=c("id"))
tmp_data2
tmp_data3 <- melt(tmp_data, id=c("id", "time"))
tmp_data3

# Subsetting
tmp_data4 <- c("a1", "a2", "a3")
tmp_data4[1]
tmp_data4[2]
paste(tmp_data4[1], tmp_data4[2], sep = "")

tmp_data5 <- c('a1', 'a2', 'a3')
names(tmp_data5) <- c('one', 'two', 'three')
tmp_data5
tmp_data5[c(1,3)]
tmp_data5[c(-1,-2)]
tmp_data5[1:2]

#install.packages('RMySQL')
library(RMySQL)
mysqlconnection = dbConnect(MySQL(), dbname = 'employees', user = 'hadoop', password = 'Pa$$w0rd123',
                            host = '192.168.137.100')
dbListTables(mysqlconnection)
result <- dbGetQuery(mysqlconnection, "SELECT * FROM employees")
df <- result
class(df)

df$gender
df[1:10,]
# * which
head(df)
df[which(df$gender == 'F' & df$emp_no > 10001), ]

# * subset
subset(df, df$gender == 'F' & df$emp_no > 10001, 
       select=c(emp_no, gender))



