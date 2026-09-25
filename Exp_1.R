getwd() 

read.csv("Student_Dataset.csv")

Student <- read.csv("Student_Dataset.csv")
Student


#Example-1
a = Student[c(2,7),]      #To select 2 and 7 rows from CSV file using indexing 
a 


#Example-2
b = Student[2,]           #To select 2 row from CSV file using indexing 
b


#Example-3
c = Student[c(3,4)]       #To select 3 and 4 columns from CSV file using indexing 
c 
