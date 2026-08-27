# Creating a numeric vector

expression_values <- c(4.2 ,3.8 ,2.1 ,5.6 , 3.1)
print(expression_values)

# Accessing elements by position (R is 1-indexed!)
print(expression_values[1])    # first element
print(expression_values[3])    # third element

# Modifying a specific element
expression_values[2] <- 4.0
print(expression_values)

# Adding a new element to the end
expression_values <-c(expression_values, 2.9)
print(expression_values)

# Vector operations (applied to every element at once)
doubled_values <- expression_values * 2
print(doubled_values)

# Filtering a vector with a condition
high_expression <- expression_values[expression_values > 3.5]
print(high_expression)
