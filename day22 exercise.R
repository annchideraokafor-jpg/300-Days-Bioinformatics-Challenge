gene_data <- data.frame(
  gene = c("APP", "MAPT","PSEN1", "APOE", "BACE1", "TREM2"),
  expression = c(4.2, 3.8, 2.1, 5.6, 3.1, 2.9)
)

gene_data$status <- ifelse(gene_data$expression > 4.0, "upregulated",
                           ifelse(gene_data$expression >= 2.0, "normal", "downregulated"))
print(gene_data$status)

print(table(gene_data$status))
print(gene_data)