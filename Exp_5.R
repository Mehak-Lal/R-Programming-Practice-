##### CALCULATING THE PROBABILITIES FOR ROLLING THE DICE 1000 TIMES. 
trials = 10000
set.seed(123)
dice_rolls = sample(1:6, size=trials, replace=TRUE)
dice_rolls  



##### CREATING THE FREQUENCY TABLE ##### 
freq = table(dice_rolls)
freq 





##### CALCULATING THE PROBABILITIES FOR BOTH THE CASES ##### 

## 1. EXPERIMENTAL PROBABILITY  ## 
experimental = table(dice_rolls)/trials 
experimental 


## 2. THEORETICAL PROBABILTY ## 
theoretical = rep(1/6, 6)
theoretical 


## 3. CREATING DATAFRAME ## 
result = data.frame(Experimental_Probabilty = experimental, 
                    Theroetical_Probability = theoretical)
View(result)

result1 = data.frame(Theoretical_Probability = result$Theoretical_Probability, Experimental_Probability = result$Experimental_Probability.Freq) 


## 4. PLOTTING THE RESULTS ## 
barplot(rbind(theoretical, experimental), beside=TRUE,
        col = c("darkmagenta", "lightblue"),
        names.arg = 1:6,
        ylim = c(0, 0.23),
        legend = c("Theoretical", "Experimental"),
        main = "Theoretical vs Experimental Probabilities for Dice Rolls")
                     
                     
                     
                     
                     
                