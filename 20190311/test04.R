library(ggplot2)
library(dplyr)
# midwest
str(midwest)
class(midwest)
data2 <- as.data.frame(midwest)
View(data2)

# 전체 인구대비 아시아 인구 백분율
# => 히스토그램을 출력해보시오.(hist)
# poptotal(total), popasian(asian)

data2$radio <- 
  data2$popasian / data2$poptotal * 100

hist(data2$radio)









