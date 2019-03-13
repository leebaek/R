# if
a <- 10L
class(a)
if(is.integer(a)){
  print("a is integer")
}

t_name <- "Tom"
if(i_name) == "Tom"{
  print("t_name is Tom")
}

# if else
# %in%
tmp_data <- c("Who","are","you")
tmp_data
if("you" %in% tmp_data){print("Exist")
} else if("are" %in% tmp_data){print("are Exist")
    }
  else{print("not exist")
}


# switch
s <- switch(3, "one", "two", "three") # 항목 중 세번째 출력
print(s)

# repeat loop
x <- 1
repeat{print(x)
  x = x + 1
  if(x == 10){
    break
  }
}

# while loop
tmp_data4 <- c("hi", "hello")
count <- 1
while(count < 10){
  print(tmp_data4)
  count = count + 1
  if(count == 5){
    break
  }
}

# for loop
tmp_data5 <- 1:10
for(i in tmp_data5){
  print(i)
}

for(j in LETTERS[1:10]){ # LETTERS : A부터 문자 나열
  print(j)
  if(j=="E"){
    break
  }
}

# break, next
tmp_data6 <- letters[1:10]
tmp_data6

for(i in tmp_data6){
  if(i == "d"){
    next  # "d"건너 뛰기
  }
  print(i)
}

# 2 ~ 9 단
a <- 1:9
b <- 1:9

for(i in a){
  i = i + 1
  for(j in b){
    w <- i * j
    print(i,"x",j,"=",w)
  }
}

for(i in 2:9){
  for (j in 2:9) {
    r <- i * j
    msg <- c(i,"*",j,"=",r)
    #print(msg)
    print(paste(msg, collapse = ""))
  }
}















