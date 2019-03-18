getwd()
setwd("c:/RWorkShop")

df <- 
  read.csv("input_data.csv", fileEncoding = 'utf-8',
           stringsAsFactors = FALSE)

class(df)
str(df)
nrow(df)
ncol(df)
dim(df)
is.data.frame(df)
max(df$salary)
test <- subset(df, dept == "IT" & salary > 600)
test
write.csv(test, "test.csv")

str(df)
test2 <- 
  subset(df, as.Date(start_date) > as.Date("2014-01-01"))
test2

install.packages("xlsx")
library(xlsx)
any(grepl("xlsx", installed.packages()))
df2 <- read.xlsx("input_data.xlsx", sheetIndex = 1)
df2

install.packages("rjson")
library(rjson)

df3 <- fromJSON(file = "input_data.json")
class(df3)
str(df3)

df4 <- as.data.frame(df3)
df4


