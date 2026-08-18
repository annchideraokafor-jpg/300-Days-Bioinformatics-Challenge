# # Day 15 — R Setup & First Script

# Goal:** Set up R and write first lines of code, comparing syntax to Python.



 # # Creating a vector (R's version of a list)
genes <- c("APP","MAPT","PSEN1","APOE")
print(genes)

# Creating a named vector (similar to a dictionary)
gene_expression <- c(APP = 4.2, MAPT = 3.8, PSEN1 = 2.1, APOE = 5.6)
print(gene_expression)

# Accessing a value by name
print(gene_expression["MAPT"])

# Basic loop (same logic as Python, different syntax)
for (gene in names(gene_expression)) {
  print(paste(gene, ":" , gene_expression[gene]))
}