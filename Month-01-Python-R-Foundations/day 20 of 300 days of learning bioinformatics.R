# # Day 20 — Basic Plotting in R

#**Goal:** Create a first plot using base R, before moving to more advanced visualization tools later.

## Key concepts:
#- `barplot()` for bar charts
#- `plot()` for scatter plots
#- Labeling with `main`, `xlab`, `ylab`

#**Key takeaway:** Seeing data visually for the first time this challenge. Simple plots today, heatmaps and volcano plots come later in Phase 3.

gene_data <- data.frame(
  gene = c("APP", "MAPT", "PSEN1", "APOE", "BACE1"),
  expression = c(4.2, 3.8, 2.1, 5.6, 3.1)
)

# Basic bar plot
barplot(gene_data$expression,
        names.arg = gene_data$gene,
        main = "Gene Expression Levels",
        xlab = "Gene",
        ylab = "Expression",
        col = "steelblue")

# Basic scatter plot (just to see the shape of the data)
plot(gene_data$expression,
     main = "Expression Values",
     ylab = "Expression",
     xlab = "Index",
     pch = 19,
     col = "darkgreen")