# Day 41 — dplyr vs pandas: Side-by-Side

#**Goal:** Solve the same task in both R (dplyr) and Python (pandas), comparing syntax directly.


library(dplyr)

gene_data <- data.frame(
  gene = c("APP", "MAPT", "PSEN1", "APOE", "BACE1"),
  expression = c(4.2, 3.8, 2.1, 5.6, 3.1)
)

result <- gene_data %>%
  mutate(status = ifelse(expression > mean(expression), "above average", "below average"))

print(result)