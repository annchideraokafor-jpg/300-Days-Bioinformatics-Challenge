# DAY 18


gene_data <- data.frame(
  gene = c("APP", "MAPT", "PSEN1", "APOE", "BACE1"),
  expression = c(4.2, 3.8, 2.1, 5.6, 3.1)
)

# Filter rows where expression is above 3.5
high_expression <- gene_data[gene_data$expression > 3.5, ]
print(high_expression)

# Filter and select only the gene column
high_gene_names <- gene_data[gene_data$expression > 3.5, "gene"]
print(high_gene_names)

# Add a new column based on a condition
gene_data$status <- ifelse(gene_data$expression > 3.5, "high", "normal")
print(gene_data)

# Sort the data frame by expression, descending
sorted_data <- gene_data[order(-gene_data$expression), ]
print(sorted_data)