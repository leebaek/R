# Lists => Container
rm(list=ls())
list_data <- list("apple",10,c(1,2,3),TRUE)
list_data
list_data[1]
list_data[3]

list_data2 <- list("apple",10,c(1,2,3),TRUE)
names(list_data2) <- c('one','two','three','four')
list_data2

list_data2$one
list_data2$three

list_data3 <- list("apple",
                   matrix(c(4,3,2,1,0,1), nrow=2),
                   10,c(1,2,3),TRUE)
list_data3
names(list_data3) <- c('one','two','three','four','five')
list_data3
list_data3$two

list_data3$one <- 'orange' # update
list_data3

list_data3$three <- NULL # delete
list_data3

list_data3[6] <- 'apple' # insert(new element)
list_data3

# Merging
list_data4 <- list("홍길동","이순신")
list_data5 <- list("권율","김유신")
list_data6 <- c(list_data4, list_data5)
list_data6
list_data6[3]

# List to Vector => unlist
vector_data6 <- unlist(list_data6)
vector_data6






