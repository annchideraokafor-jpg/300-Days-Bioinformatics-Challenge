# Day 26 — Practice: Small Analysis

#**Goal:** Combine file reading, custom functions, and summarizing into one small analysis.

#**Key takeaway:** This is close to a real mini-workflow: load data, classify it, summarize the results.



# Write and read a CSV (Day 25), then classify using a custom function (Day 23)
gene_data <- data.frame(
  gene = c("APP", "MAPT", "PSEN1", "APOE", "BACE1"),
  expression = c(4.2, 3.8, 2.1, 5.6, 3.1)
)
write.csv(gene_data, "gene_expression.csv", row.names = FALSE)

loaded_data <- read.csv("gene_expression.csv")

get_status <- function(expression) {
  if (expression > 4.5) {
    return("very high")
  } else if (expression > 3.0) {
    return("moderate")
  } else {
    return("low")
  }
}

loaded_data$status <- sapply(loaded_data$expression, get_status)
print(loaded_data)

# Summary using table()
print(table(loaded_data$status))