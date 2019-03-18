# cancer.csv
# 연령대별로 암의 발생률을 구하고 그래프로 출력
cancer <- read.csv("20190311/cancer.csv", encoding = 'utf-8')
cancer
age <- cancer$age
age
age1 <- cut(cancer$age, breaks = (1:11) * 10)
age1
total <- table(age1)
sum(total) # 전체 암 발생

age0ratio <- length(which(age >= 0 & age < 10))/sum(total)*100
age10ratio <- length(which(age >= 11 & age < 20))/sum(total)*100
age20ratio <- length(which(age >= 21 & age < 30))/sum(total)*100
age30ratio <- length(which(age >= 31 & age < 40))/sum(total)*100
age40ratio <- length(which(age >= 41 & age < 50))/sum(total)*100
age50ratio <- length(which(age >= 51 & age < 60))/sum(total)*100
age60ratio <- length(which(age >= 61 & age < 70))/sum(total)*100
age70ratio <- length(which(age >= 71 & age < 80))/sum(total)*100
age80ratio <- length(which(age >= 81 & age < 90))/sum(total)*100
age90ratio <- length(which(age >= 91 & age < 100))/sum(total)*100
age100ratio <- length(which(age >= 100))/sum(total)*100


if(age >= 0 & age < 10){
  age0ratio = age0/total*100
}
