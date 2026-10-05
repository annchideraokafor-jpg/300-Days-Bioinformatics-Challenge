gene_data <- data.frame(
  gene = c("APP", "MAPT","PSEN1", "APOE", "BACE1"),
  expression = c(4.2, 3.8, 2.1, 5.6, 3.1),
  chromosome = c(21, 17, 14, 19, 11)
  
)

# Filter rows where expression is above 3.5
high_expression <- gene_data[gene_data$expression > 3.5, ]
print(high_expression)

# Filter genes located on chromosomes below 15
low_chromosome <- gene_data[gene_data$chromosome < 15, ]
print(low_chromosome)

# Filter and select only the gene column
high_gene_names <- gene_data[gene_data$expression > 3.5, "gene"]
print(high_gene_names)

# Filter and select only the chromosome column
high_chromosome_gene<- gene_data[gene_data$chromosome > 15, "gene"]
print(high_chromosome_gene)

# Add a new column based on a condition
gene_data$status <- ifelse(gene_data$expression > 3.5, "high", "normal")
print(gene_data)

gene_data$chromosome_status <- ifelse(gene_data$chromosome > 15,"greater", "normal")

print(gene_data)

# Sort the data frame by expression, descending
sorted_data <- gene_data[order(-gene_data$chromosome), ]
print(sorted_data)

