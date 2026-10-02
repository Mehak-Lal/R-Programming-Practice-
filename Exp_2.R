##### TO GET THE MEAN ##### 
A = c(1,2,3,4,5,5,5,6,7,8)             #Define a vector 
mean(A)                                #Using the predefined mean function 

mean = sum(A)/length(A)                #Defining the formula 
mean




##### TO GET THE MEDIAN ##### 
median(A)                              #Predefined function for median




##### TO GET THE MODE ##### 
y = table(A)
y 
z = prop.table(table(A))
z 

#The frequencies or relative frequencies can be calculated with the table function, and relative frequencies with prop.table(table()).

names(y)[which(y==max(y))]            #names() is used to get/set the name of the object 




##### TO HANDLE THE NA VALUES ##### 
B = c(A, NA)                          #Create a vector 
B

mean(B)

mean(B, na.rm=TRUE) 

#In the mean function, we can define na.rm option (i.e. NA remove), which can be used to ignore NA values. The na.rm option can also be used to ignore NaN or NULL values. 





##### STANDARD DEVIATION ##### 
sd(A)                   

sd(B, na.rm=TRUE)



var(A)                            #Variance 

sqrt(var(A))





##### RANGE ##### 
range(A)                          #Range of vector A

z = range(A)                      #Difference between maximum and minimum bvalue of A 
diff(z) 



min(A)

max(A)

max(A)-min(A)



## TO GET THE INTERQUARTILE RANGE ## 
IQR(B, na.rm=TRUE)


## TO GET THE QUARTILE RANGE ## 
quantile(A)


## TO GET THE 25 AND 75 PERCENTILES ## 
quantile (A, 0.25)

quantile (B, na.rm=TRUE, 0.75)

#Range measures the maximum and minimum data value, and the interquatile range measures where the majority value is. 





##### EXAMPLE-1 ##### 
#A survey of 25 faculty members is taken in a college to study their vocational mobility. They were asked the question - /"In addition to your current position, how many educational institutions have you worked for as faculty ?". Following is the frequency distribution of their responses. Find the mean, median, mode, and standard deviation of the distribution. 
#x 0 1  2 3 
#f 8 11 5 1 
x = c(0,1,2,3) 
f = c(8,11,5,1)
a=rep(x,f)              #Repeating x for f times 
a 

mean(a)                 #Mean 


median(a)               #Median 

y=table(a)              #Frequency table 
y


names(y)[which(y==max(y))]   #Mode

sd(a)                   #Standard Deviation  






##### PRACTICE QUESTION -1 ##### 
#Twenty students, graduates and undergraduates, were enrolled in a stastics course. Their ages were 18,19,19,19,19,20,20,20,20,20,21,21,21,21,22,23,24,27,30,36. 
# a) Find mean and median of all students.
k <- c(18,19,20,21,22,23,24,27,30,36)
l <- c(1,4,5,4,1,1,1,1,1,1)
m <- rep(k,l)
m 
mean(m)
median(m)


# b) Find median age of all students under 25 years.
age <- m[m<25]
median(age)


# c) Find the modal age of all the students. 
n <- table(m)
n 
names(n)[which(n==max(n))]






##### PRACTICE QUESTION-2 ##### 
#Compute the mean, median, 1st quartile, 3rd quartile, and mode for the following frequency distribution. 
#Height in cm        :  145-150  150-155  155-160  160-165  165-170  170-175  175-180  180-185
#Number of adult men :     4        6       28       58       64        30       5        5 
midpoint <- c(147.5, 152.5, 157.5, 162.5, 167.5, 172.5, 177.5, 182.5)
frequency <- c(4,6,28,58,64,30,5,5)
p <- rep(midpoint, frequency)
p

mean(p)

median(p)

quantile(p,0.25)

quantile(p, 0.75)

tab <- table(p)
names(tab)[which(tab==max(tab))]

