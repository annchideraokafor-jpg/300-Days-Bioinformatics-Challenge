# Day 22 — R Practice Problem

#**Goal:** No new concept, applying Week 3 R skills (data frames, ifelse, filtering) to a self-contained problem.

#**Key takeaway:** Nested ifelse() lets you classify into three categories, not just two, in one line.


gene_data <- data.frame(
  gene = c("APP", "MAPT", "PSEN1", "APOE", "BACE1", "TREM2"),
  expression = c(4.2, 3.8, 2.1, 5.6, 3.1, 2.9)
)

# Classify, filter, and summarize in one go
gene_data$status <- ifelse(gene_data$expression > 4.0, "upregulated",
                           ifelse(gene_data$expression >= 2.0, "normal", "downregulated"))

table(gene_data$status)  # count how many genes fall into each category

upregulated <- gene_data[gene_data$status == "upregulated", "gene"]
print(upregulated)