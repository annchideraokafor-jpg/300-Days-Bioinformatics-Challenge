# Create data frame

gene_data <- data.frame(
  gene = c("APP", "MAPT", "PSEN1", "APOE","BACE1"),
  expression = c(4.2, 3.8, 2.1, 5.6, 3.1),
  chromosome = c(21, 17, 14, 19, 11)
)

print(gene_data)
print(gene_data$expression)
print(gene_data[2, ])

print(gene_data[2, "expression"])
print(gene_data[1, "gene"])

str(gene_data)