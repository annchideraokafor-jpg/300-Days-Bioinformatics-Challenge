# Day 36 — Intro to dplyr

#**Goal:** Learn dplyr, a package built for cleaner, more readable data manipulation, and the pipe operator %>%.

## Key concepts:
#- `library(dplyr)` — loading the package
#- `%>%` (the pipe) — chains steps together, read left to right
#- `filter()` — dplyr's version of base R's row filtering
#- `select()` — dplyr's version of choosing specific columns

#**Key takeaway:** Same filtering logic as base R (Day 18), but dplyr's syntax reads more like plain English: "take this data, then filter it."


library(dplyr)

gene_data <- data.frame(
  gene = c("APP", "MAPT", "PSEN1", "APOE", "BACE1"),
  expression = c(4.2, 3.8, 2.1, 5.6, 3.1)
)

# dplyr's filter() and select()
high_expression <- gene_data %>% filter(expression > 3.5)
print(high_expression)

gene_names_only <- gene_data %>% select(gene)
print(gene_names_only)
