#CREATING THE EMPLOYEE DATA FRAME 
df <- data.frame(
  ID = c(101, 102, 103, 104, 105),
  Name = c("Kriti", "Parth", "Sneha", "Kunal", "Akansha"),
  Department = c("HR", "IT", "Finance", "Management", "Marketing"),
  Salary = c(10000, 20000, 30000, 40000, 50000))

#PRINTING THE DATA FRAME 
print("--- Original Data Frame ---")
print(df)


#PERFORMING CLASS, STRUCTURE, AND SUMMARY OPERATIONS
print("--- Class of the Object ---")
print(class(df))
print("--- Structure of the Data Frame ---")
str(df)
print("--- Summary of the Data Frame ---")
summary(df)


#ROW AND COLUMN EXTRACTION
print("--- Extracting the 3rd Row ---")
print(df[3, ])
print("--- Extracting the 2nd Column (Names) ---")
print(df[,2])


#ADDING A NEW ROW
new_row <- data.frame(ID = 106, Name = "Rahul", Department = "Sales", Salary = 45000)
df <- rbind(df, new_row)
print("--- Data Frame after adding a new row ---")
print(df)


#ADDING A NEW COLUMN 
Experience <- c(5, 3, 4, 7, 2, 6)                  #Must match the new total of 6 rows
df <- cbind(df, Experience)
print("--- Data Frame after adding a new column ---")
print(df)
