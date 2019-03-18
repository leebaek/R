# dplyr, ggplot2, purrr 

install.packages("tidyverse")

# dplyr
library(dplyr)
df <- read.csv("20190311/csv_exam.csv")
View(df)
df[which(df$class == 1),]

df %>% filter(class == 1) # 위의 조건식과 같은 의미
df %>% filter(class == 2)
df %>% filter(math >= 50)
df %>% filter(class == 1 & math > 50)
df %>% filter(class == 1 | math > 50)

df2 <- df %>% filter(class == 1 | math > 50)
df2
class(df2)
mean(df2$math)
median(df2$math)
max(df2$english)


df %>% filter(math > 30 | class == 2)
df %>% filter(class %in% c(1,2))
df %>% select(math, english) # math, english만 출력
df %>% select(-math) # math만 제외하고 출력
df %>% select(-math, -english) # math, english제외하고 출

df %>% select(math, english) %>% filter(math > 50) 
# math와 english를 출력하는데 math의 점수가 50점 이상인 경우만 출

df %>% select(math) %>% filter(math > 50) %>% head
# math를 출력하는데 50점 이상, 상위 6개만 출력

#ggplot2::mpg
library(ggplot2)
df4 <- ggplot2::mpg
df5 <- as.data.frame(df4)
df6 <- df5 %>% select(class, cty)
df5 %>% arrange(class) # class기준 오름차순으로
str(df5)
df5 %>% arrange(desc(class))

df5 %>% filter(manufacturer == "audi") %>% arrange(desc(hwy)) %>% head(5)
# hwy기준 내림차순 manufacturer이 audi, 상위 5개만 출력

df7 <- df5 %>% mutate(total = (hwy + cty)/2, mean = hwy)
# total, mean이라는 col 추가
df7
str(df6)

# 요약하기
df5 %>% summarise(hwy_mean = mean(hwy))
df5 %>% group_by(class) %>% summarise(class_mean=mean(hwy))
# class기준으로 groupby를 하고 요약함

df5 %>% group_by(class) %>% summarise(count = n())

# mean()평균
# sd()표준편차
# sum()합계
# median()중앙값
# min()최소값
# max()최대값
# n()빈도

# mpg 회사별로 "suv" 자동차의 도시 및 고속도로 통합 연비의 평균, 내림차순, 1~5위 출력
mpg %>% group_by(manufacturer) %>%
  filter(class == "suv") %>%
  mutate(totaltmp = (cty+hwy)/2) %>% 
  summarise(totalmean = mean(totaltmp)) %>%
  arrange(desc(totalmean)) %>% head(5)


















