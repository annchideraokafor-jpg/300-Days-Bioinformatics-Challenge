# # Day 19 — R vs Python: Side-by-Side Comparison (R Version)

#**Goal:** Repeat the same task from the Python version, this time using R.

## Task: Classify each gene as "high" or "normal" expression, then filter to show only the highs.

## R approach:
#- Used `ifelse()` to classify every gene at once, no loop needed
#- Used direct condition-based filtering inside `[ ]`

#**Key takeaway:** R's default approach operates on the whole dataset at once, no loop required.


gene_data <- data.frame(
  gene = c("APP", "MAPT", "PSEN1", "APOE", "BACE1"),
  expression = c(4.2, 3.8, 2.1, 5.6, 3.1)
)

gene_data$status <- ifelse(gene_data$expression > 3.5, "high", "normal")
print(gene_data)

high_genes <- gene_data[gene_data$status == "high", "gene"]
print(high_genes)
