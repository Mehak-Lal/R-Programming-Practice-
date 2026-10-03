##### PROBABILITIES FOR THE CASE OF COIN FLIPS ##### 

##### 1. USING DISTRIBUTIONS ##### 
outcomes = c("heads", "tails")       #Creating set of possible outcomes 
A = sample (outcomes, size = 10, prob = c(0.5,0.5), replace = TRUE)
A

#Sample from the "outcome" set of size of 10 with probability of each component as 0.5 with replacement. 


B = sample(outcomes, size = 10, prob = c(0.2, 0.8), replace = TRUE)
B        #Bias coin flips 

#Sample from the "outcome" set of size of 10 with probability of each component as 0.2 and 0.8 respectively, with replacement. 





##### 2. BY CREATING THE FUNCTION #####
#Assuming 0 for "heads" and 1 for "tails" 
flips = function(n) sample(0:1, size = n, prob = c(0.5, 0.5), replace = TRUE) 
outcome = flips(30)               #Flipping coin for 30 times
outcome


sum(outcome == 0)/30              #Frequencies for occurrence of 0


sum(outcome == 1)/30              #Frequencies for occurrence of 1


hist(outcome, xlab = "Coin Flips", col="pink", breaks = c(-0.5,0.5,1.5))    #Plotting histogram



plot (outcome, type="o", main="Coin Flips", xlab="Trials", ylab="Probability", col="Red")





##### 3. BY CREATING LOOP ##### 
outcomes = c("heads", "tails")             #Creating the set of possible outcomes
results = NULL                             #Declaring a null value to the variable
for (i in 1:100) {
  results[i] = sample(outcomes, size=1, replace=TRUE)
}
results

tab2 = table(results)          #Creating the frequency table 
tab2


pie(tab2, labels=c("heads", "tails"), main="Pie Chart for Coin Flips", col=c("Pink", "Grey"))













##### PROBABILITIES FOR THE CASE OF CARD DRAWS ##### 
deck = rep(c("Spade", "Heart", "Diamond", "Club"), each=13)
deck


total_card = length(deck)         #Length or total variables in the deck 
total_card


res = NULL                     #Assigning NULL value  to a variable 
for (i in 1:100) {             #Loop to draw 100 samples 
  res[i]=sample(deck, size=1, replace=TRUE)
}
res


table = table(res)              #Frequency table 
table 


pie(table, labels=c("Club", "Diamond", "Heart", "Spade"), main="Pie Chart for Drawn Cards", col = c("Pink", "Red", "Purple", "Yellow"))  #Pie chart for the outcomes  




