##### DEFINING THE SET OF VALUES OF RANDOM VARIABLES ALONG WITH THEIR PROBABILTIES ##### 
x = c(0, 3, 5, 10)
p_x = c(0.2, 0.1, 0.1, 0.6)

##### TO CHECK IF THE SUM OF PROBABILITIES IS EQUAL TO 1 OR NOT ##### 
if (sum(p_x) != 1) {
  stop("Sum of probabilities must be eual to 1.")
} 


##### TO CALCULATE THE EXPECTED VALUE ##### 
expected_value = sum(x * p_x)
cat(" Expected Value (E(X) : ", expected_value, "\n")


##### CALCULATE VARIANCE ##### 
expected_value_squared = sum(x^2) * p_x
variance <- expected_value_squared - (expected_value^2)
cat(" Variance (V(X) : ", variance, "\n")




##### TO CALCULATE MEAN AND VARIANCE FOR LARGE SAMPLE DATA #####
large_sample = sample (x, size = 500, prob = p_x, replace = TRUE)
if (sum(p_x) != 1) { 
  stop("Probabilities must sum to 1")
} 
v = var(large_sample)
print("Variance : ", v)


m = mean(large_sample)
print("Mean : ", m)



##### Define the PDF for uniform distribution ##### 
pdf_uniform <- function(x) { 
  ifelse (x >= 0 & x <= 1, 1, 0)     # Uniform PDF 
} 



##### EXPECTED VALUE CALCULATION ##### 
expected_value <- integrate(function(x) x * pdf_uniform(x), 0, 1)$value
cat("The expected value (E(X)) is : ", expected_value, "\n")


##### VARIANCE CALCULATION ##### 
ev_squared = integrate(function(x) (x^2) * pdf_uniform(x), 0, 1)$value 
variance = ev_squared - (expected_value^2)
cat("The variance (V(X)) is : ", variance, "\n")






##### PRACTICE QUESTION - 1 ##### 
# Let X be a discrete random variable with the following values and probabilities : 
# i.    x1=1, P(X=1) = 0.2
# ii.   x2=2, P(X=2) = 0.5 
# iii.  x3=3, P(x=3) = 0.3 
# Find mean, variance, and standard deviation. 


x = c(1,2,3)  # Values of the random variable 
p = c(0.2, 0.5, 0.3)  # Corresponding probabilities 
expected_value = sum(x * p)  # Expected value 
variance = sum((x - expected_value)^2 * p)  # Variance 
cat("The expected value (E(X)) is : ", expected_value, "\n")
cat("The variance (V(X)) is : ", variance, "\n")





##### PRACTICE QUESTION - 2 ##### 
# Consider a continuous random variable X with probability density function : 
# f(x) = 2x      , 0 <= x <= 1
#      = 2(2-x)  , 1 < x <= 2
#      = 0       , otherwise 
# Find the expected value and variance of X. 


# Continuous random variable 
# Define the pdf as a function 
pdf = function(x) {
  ifelse(x >= 0 & x <= 1, 2 * x, 
         ifelse(x>1 & x <= 2, 2*(2-x), 0))
} 
# Calculate expected value using numerical integration 
expected_value = integrate(function(x) x * pdf(x), lower=0, upper=2)$value 
# Calculate E[x^2] using numerical integration 
expected_value_sq = integrate(function(x) x^2 * pdf(x), lower=0, upper=2)$value 
#Calculate variance 
variance = expected_value_sq - expected_value^2
expected_value
variance 

