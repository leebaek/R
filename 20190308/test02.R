# Matrices
m_matrix <- matrix(c(3:14), nrow = 4, byrow = TRUE)
m_matrix
m_matrix[,]
m_matrix[1,3]
m_matrix[,3]
m_matrix[1,]
m_matrix[1:2,]
m_matrix[c(1,2),]
m_matrix[c(1,3),]
m_matrix2 <- matrix(c(0),nrow = 4,ncol = 2, 
                    dimnames=list(c('one','two','three','four'),
                                  c('one','two')))
m_matrix2
m_matrix2['one','one']
m_matrix2['one',]

m_matrix3 <- matrix(c(1), nrow = 2, ncol = 2)
m_matrix3
rownames(m_matrix3) <- c('one','two')
m_matrix3
colnames(m_matrix3) <- c('one','two')
m_matrix3
class(m_matrix3)

# Array
arr <- array(c(1:3, 1:3), dim = c(3,3,2))
arr
arr[,,2]
arr[,,1]
arr[1,,1]
arr2 <- array(c(1:3, 1:3), dim = c(3,3,2), dimnames = list(c('one','two','three'),
                                                          c('one','two','three'),
                                                          c('one page','two page')))
arr2

m_matrix4 <- matrix(c(0), nrow = 2)
m_matrix4
#names(m_matrix4) <- c('one')
#m_matrix4

#apply(x, margin, fun)
class(m_matrix4)

# Factor
f_data <- c('one','one','two','three')
f_data
f_data2 <- factor(f_data) # factor
is.factor(f_data2)

f_data3 <- factor(f_data, levels = c('one','two','three','four'))
f_data3
is.factor(f_data3)

# Data Frame
student <- data.frame(stu.name = 1:3,
                      stu.age = 1:3,
                      stu.location = 1:3)
student

student2 <- data.frame(1:2,1:2,1:2)
rownames(student2) <- c('one','two')
colnames(student2) <- c('one','two','three')
student2
student2[,]
student2[1:2,1]
student2[,c(1,3)]
student2[-1,]
student2[-1,-3]
student2[,c(-1,-3)]
student2['one',]
class(student2$two)
student2$one

