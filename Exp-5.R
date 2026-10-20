##### 1. IF CONDITION #####
age <- 20
if (age >= 18) {
  print("You are eligible to vote.")
}



##### 2. IF-ELSE CONDITION #####
score <- 45
if (score >= 50) {
  print("Passed")
} else {
  print("Failed")
}



##### 3. FOR LOOP #####
print("For Loop Output:")
fruits <- c("Apple", "Banana", "Cherry")
for (fruit in fruits) {
  print(fruit)
}



##### 4. WHILE LOOP #####
print("While Loop Output:")
count <- 1
while (count <= 3) {
  print(paste("Count is:", count))
  count <- count + 1
}



##### 5. REPEAT AND BREAK STATEMENT #####
print("Repeat Loop Output:")
number <- 1
repeat {
  print(number)
  number <- number + 1
  if (number > 3) {
    break # Exits the repeat loop
  }
}




##### 6. RETURN STATEMENT #####
print("Return Statement Output:")
check_even_odd <- function(num) {
  if (num %% 2 == 0) {
    return("Even")
  } else {
    return("Odd")
  }
}
# Calling the function
result <- check_even_odd(7)
print(result)



##### 7. NEXT STATEMENT #####
print("Next Statement Output:")
for (i in 1:5) {
  if (i == 3) {
    next             # Skips printing 3
  }
  print(i)
}



##### 8. BREAK STATEMENT (in a standard loop) #####
print("Break Statement Output:")
for (i in 1:5) {
  if (i == 4) {
    break # Exits the loop entirely when i reaches 4
  }
  print(i)
}



