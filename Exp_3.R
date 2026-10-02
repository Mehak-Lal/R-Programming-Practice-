#CREATING THE DATAFRAME 
empid = c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15)          #Creating vector 
age = c(30,37,45,32,50,60,35,32,34,43,32,30,43,50,60)
gender = c(0,1,0,1,1,1,0,0,1,0,0,1,1,0,0)
status = c(1,1,2,2,1,1,1,2,2,1,2,1,2,1,2)
empinfo = data.frame(empid, age, gender, status)        #Creating dataframe 
empinfo 



#GIVING THE LABELS
empinfo$gender = factor(empinfo$gender, labels=c("Male", "Female"))      
empinfo$status = factor(empinfo$status, labels=c("Staff", "Faculty"))      
empinfo 



#CREATING THE SUBSET FROM "empinfo" 
genderm = subset(empinfo, empinfo$gender == "Female")
genderm 

genderm = subset(empinfo, empinfo$gender == "Male")
genderm



#CREATING ONE-WAY TABLE 
tab1 = table(empinfo$age)
tab1

tab2 = table(empinfo$gender)
tab2



#CREATING TWO-WAY TABLE 
tab3 = table(empinfo$gender, empinfo$status)
tab3



### GRAPHICAL REPRESENTATION IN R ###
#PLOT (SCATTER)
plot(empinfo$age, type="o", main="Age of Employees", xlab="Employee ID", ylab="Age in Years", col="red")


#PIE CHART
pie(tab2, labels=c("Male", "Female"), main="Pie Chart For Gender", col=c("Red", "Pink"))


#BAR PLOT 
barplot(tab3, beside=T, xlim=c(1,15), ylim=c(0,5), col=c("Red", "Pink"), legend=rownames(tab3))


#BOX PLOT
boxplot(empinfo$age~empinfo$gender, main="Box Plot", xlab="Gender", ylab="Age", col=c("Red", "Pink"))


#HISTOGRAM
hist(age, xlab="Age", col="Violet", boder="Black", xlim=c(0,50), ylim=c(0,5), breaks=5)








##### PRACTICE QUESTION - 1 ##### 

# Plot a histogram for below given data of temperature as :- 
# T = (8,56,24,47,74,85,63,12,11,12,77,8,56,24,47,85,85,66,63,63)
T=c(8,56,24,47,74,85,63,12,11,12,77,8,56,24,47,85,85,66,63,63)
hist(T, xlab="Temperature", col="Green", border="Black", xlim=c(0,90), ylim=c(0,5), breaks=5) 





##### PRACTICE QUESTION - 2 ##### 

# Plot the scatter graph for age and gender of the data frame empinfo. 
plot(empinfo$age, type="o", main="Age of Employees", xlab="Employee ID", ylab="Age in Years", col="red")
plot(empinfo$gender, type="o", main="Gender of Employees", xlab="Employee ID", ylab="Gender", col="red")

