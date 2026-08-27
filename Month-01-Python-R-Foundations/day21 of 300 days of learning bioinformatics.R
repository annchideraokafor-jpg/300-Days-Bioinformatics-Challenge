# Day 21 — Week 3 Recap

#**Goal:** Consolidate everything learned this week: vectors, data frames, filtering, sorting, and basic plotting.

## This week covered:
#- R setup and first script
#- Vectors (creating, modifying, vectorized operations)
#- Data frames (creating, filtering, sorting)
#- R vs Python comparison
#- Basic plotting

#**Key takeaway:** R's vectorized approach felt foreign at first, operate on the whole dataset at once instead of looping. By week's end, it's starting to feel like a genuine alternative way of thinking, not just different syntax.


# Day 21: Week 3 Recap — combining everything learned this week

gene_data <- data.frame(
  gene = c("APP", "MAPT", "PSEN1", "APOE", "BACE1", "TREM2"),
  expression = c(4.2, 3.8, 2.1, 5.6, 3.1, 2.9)
)

# Classify expression (Day 18)
gene_data$status <- ifelse(gene_data$expression > 3.5, "high", "normal")

# Sort by expression, highest first (Day 18)
sorted_data <- gene_data[order(-gene_data$expression), ]
print(sorted_data)

# Filter to just the high-expression genes (Day 18)
high_genes <- sorted_data[sorted_data$status == "high", ]
print(high_genes)

# Basic stats using vectorized functions (Day 16)
cat("Average expression:", round(mean(gene_data$expression), 2), "\n")
cat("Highest expression:", max(gene_data$expression), "\n")
cat("Lowest expression:", min(gene_data$expression), "\n")

# Plot the results (Day 20)
barplot(sorted_data$expression,
        names.arg = sorted_data$gene,
        main = "Week 3 Recap: Gene Expression",
        xlab = "Gene",
        ylab = "Expression",
        col = ifelse(sorted_data$status == "high", "steelblue", "gray"))