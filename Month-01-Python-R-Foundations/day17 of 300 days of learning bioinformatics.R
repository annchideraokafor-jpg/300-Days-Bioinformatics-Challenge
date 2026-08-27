### Day 17 — Data Frames

# A data frame is a table-like structure in R that organizes data into rows and columns. It is commonly used to store and work with datasets, including biological and bioinformatics data.

# Create the data frame
gene_data <- data.frame(
  gene = c("APP", "MAPT","PSEN1", "APOE"),
  expression = c(4.2, 3.8, 2.1, 5.6)
   )
print(gene_data)

# Look at the structure
str(gene_data)

# Get the expression column
print(gene_data$expression)

# Get the first row
print(gene_data[1, ])

# Get one specific cell
print(gene_data[2, "expression"])
print(gene_data[1, "gene"])