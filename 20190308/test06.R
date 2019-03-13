# Python Matplotlib
# R ggplot2

install.packages("ggplot2")
library(ggplot2)

data <- c('a','b','a','c','d')
qplot(data)

View(mpg)
class(mpg)
str(mpg)
mpg$model
dim(mpg)
colnames(mpg)
rownames(mpg)
mpg$hwy
qplot(data = mpg, x = hwy)
View(mpg)
qplot(data = mpg, x = year)
qplot(data = mpg, x = drv, y = hwy)
qplot(data = mpg, x = drv, y = hwy, geom = "line")
qplot(data = mpg, x = drv, y = hwy, geom = "boxplot", colour = drv)












