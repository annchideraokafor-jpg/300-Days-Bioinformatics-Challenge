# Task: Create a named vector with 5 genes and their expression values. Access the third gene's value by name. Modify the first gene's value. Multiply the entire vector by 1.5 and print the result.

# Step 1: Create the named vector
gene_expression <- c(APP = 4.2, MAPT = 3.8, PSEN1 = 2.1, APOE = 5.6, BACE1 = 3.1)

# Step 2: Access the third gene's value by name
print(gene_expression["PSEN1"])

# Step 3: Modify the first gene's value
gene_expression["APP"] <- 5.0
print(gene_expression)

# Step 4: Multiply the entire vector by 1.5
scaled_expression <- gene_expression * 1.5
print(scaled_expression)

