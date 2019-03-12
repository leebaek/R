# Matrices
# Matrix(data, nrow, ncol, byrow, dimnames)

m_data <- matrix(c(1,2,3,4), nrow=2)
m_data

m_data2 <- matrix(3:14, nrow=4, byrow = TRUE) # row기준 증가
m_data2

m_data3 <- matrix(3:14, nrow=4, byrow = FALSE) # col기준 증가
m_data3

m_data4 <- matrix(1:6, nrow = 3, ncol = 2)
m_data4

m_data5 <- matrix(1:6, nrow = 2, ncol = 3)
m_data5

m_data6 <- matrix(1:6, nrow = 3, ncol = 1)
m_data6

row_names = c('row1','row2','row3')
col_names = c('col1','col2')

m_data7 <- matrix(1:6, nrow = 3, ncol = 2, 
                  dimnames = list(row_names,col_names))
m_data7















