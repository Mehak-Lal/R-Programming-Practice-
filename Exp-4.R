#MATRIX CREATION USING ROW-WISE FILLING 
A <- matrix(c(1,2,3,4,5,6), nrow=2, byrow=TRUE)

#MATRIX CREATION USING COLUMN-WISE FILLING 
B <- matrix(c(6,5,4,3,2,1), nrow=2, byrow=FALSE)


#DISPLAYING MATRICES 
print("MATRIX A (Row-wise filling) : ")
print(A)

print("MATRIX B (Column-wise filling) : ")
print(B) 


#ELEMENT-WISE ARITHMETIC OPERATIONS 

#ADDITION
print("ADDITION OF TWO MATRICES : ")
print(A+B)


#SUBTRACTION
print("SUBTRACTION OF TWO MATRICES : ")
print(A-B)


#MULTIPLICATION
print("MULTIPLICATION OF TWO MATRICES : ")
print(A*B)


#DIVISION
print("DIVISION OF TWO MATRICES : ")
print(B/A)
