# Exercise 2 (Day 19 — R vs Python)
#Pick a task (e.g., "find genes with expression above the average"), and solve it twice, once in Python (dictionary + loop/comprehension), once in R (data frame + vectorized filtering). Compare the two side by side.

gene_data <- data.frame(
  gene = c("APP", "MAPT", "PSEN1", "APOE", "BACE1"),
  expression = c(4.2, 3.8, 2.1, 5.6, 3.1),
  chromosome = c(21, 17, 14, 19, 11)
)

gene_data$status <- ifelse(gene_data$expression > 3.5, "high", "normal")
print(gene_data)

gene_data$status <- ifelse (gene_data$chromosome > 15, "greater", "normal")
print(gene_data)

high_genes <- gene_data[gene_data$status == "high", "gene"]
print(high_genes)

