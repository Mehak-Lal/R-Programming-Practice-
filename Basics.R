x <- 10    #Assigns the value 10 to x
x          #Prints the value of x


y = x*2    #Assigns the value of x*2 to y 
y          #Prints the value of y 


z = x+y    #z is the sum of x and y
z          #Prints the value of z 


X = 25     #Capital X is considered another variable 
x+X        #Prints the sum of x+X 


2+5 


2*5 


2/4 


2*3-4+5/6


2^3 


2**8 


max(1,4,8,112)        #max function 


max(1.2, 3.2,-7.8)    #max function 


min (1,4,8,112)      #min function 


min(1.2,3.2,-7.8)    #min function 


abs(-4)           #absolute value function 


sqrt(25)          #squareroot function 


round(1.83)       #round function 


round(1.23)       #round function 


log(10)           #log function 


log10(10)         #log to the base 10


log(9,base=3)     #log to the base 3


var <- 3+5i    #Variable with a complex value 
var            #Prints the value of var


Re(var)        #Real part  


Im(var)        #Imaginary part 


Conj(var)      #Conjugate part 


Mod(var)       #Complex modulus


Arg(var)       #Complex argument 





#VECTORS

a <- c(1,2,3,4,5)
a 


c(2,3,4,5)^2


c(2,3,4,5)^c(2,3)


c(2,3,4,5)+10


c(2,3,5,7)%/%2


c(2,3,5,7)%%2           #Modulo operator 


abs(c(-1,-2,-3,4,5))    #Absolute value function 


sqrt(c(4,9,16,25))     #Square root function


sum(c(2,3,5,7))        #Sum function 


prod(c(2,3,5,7))       #Product function


b <- matrix(nrow = 4, ncol = 3, data = c(1,2,3,4,5,6,7,8))     #Matrix assigned to b 
b                      #Prints matrix b 


b[3,2]


b <- matrix(nrow = 4, ncol = 3, data = c(1,2,3,4,5,6,7,8), byrow = TRUE)     #Entering data row-wise
b


dim(b)         #Dimensions of the matrix 


nrow(b)        #Number of rows 


ncol(b)        #Number of columns 


mode(b)        #Type of storage 


c <- matrix(nrow = 4, ncol = 2, data = 2)     #Assigning specified number to all matrix elements 
c


d <- diag(1, nrow = 4, ncol = 2)     #Constructing a diagonal matrix 
d 


e <- matrix(nrow = 4, ncol = 2, data = c(1,2,3,4,5,6,7,8))
e


f <- t(e)          #Transpose matrix of e matrix 
f 


4*e               #Multiplying the matrix with a constant 


et <- t(e)%*%e    #Matrix multiplication 
et 


g <- crossprod(e)  #Cross product of the matrix 
g 


e+6*e 


5*e-e


e[2,]               #Accessing elements 


e[,2]               #Accessing elements 


h <- matrix(nrow = 2, ncol = 2, byrow=1, data = c(83,100,100,110))      
h


solve(h)            #Inverse of the matrix h


mymatrix <- matrix(1:6,2,3,byrow=T)
mymatrix 


mymatrix <- rbind(mymatrix, 7:9)      #Changing the values of the matrix 
mymatrix 


mymatrix[3,] <- 1:4                  #Changing the entire row 
mymatrix 


mymatrix[,4] <- 7:9                  #Changing the entire column 


mymatrix <- mymatrix[-2,]            #Deleting one row 


mymatrix <- mymatrix[,-4]            #Deleting one column 





#DATAFRAMES 

X <- 1:16 
x


y <- matrix(x, nrow = 4, ncol = 4)
x#Constructing a diagonal matrix 


z <- letters[1:16]
z


datafr <- data.frame(x,y,z)        #Creating dataframes 
datafr 


a <- c(1,2,3,4,NA)
a 


b <- c(6,7,8,NA,10)
b


c <- c(11,12,NA,14,15)
c


d <- c(16,NA,18,19,20) 
d


e <- c(21,22,23,24,25)
e


df <- data.frame(a,b,c,d,e)       #Creating dataframe
df


class(df)                         #Datatype of df 


nrow(df)                          #Number of rows 


ncol(df)                          #Number of columns 


summary(df)                       #Summary of columns of dataframe


colnames(df)                      #Column names of df 


rownames(df)                      #Row names of df 


colnames(df) <- c("a1","b1","c1","d1","e1")          #To change column names 
df


View (df)                          #To view dataframe in excel 









