# Day 38 — dplyr: group_by() & summarize()

#**Goal:** Group data by a category and calculate summary statistics within each group, dplyr's version of pandas' groupby().

## Key concepts:
#`group_by()` — groups rows by a shared value
#`summarize()` — calculates statistics within each group
# `n()` — counts rows within each group

#Key takeaway: Same operation as pandas' .groupby().agg() from Week 5, dplyr's chained syntax makes the intent read clearly: group, then summarize.


library(dplyr)

gene_data <- data.frame(
  gene = c("APP", "MAPT", "PSEN1", "APOE", "BACE1", "TREM2"),
  expression = c(4.2, 3.8, 2.1, 5.6, 3.1, 2.9),
  status = c("high", "high", "normal", "high", "normal", "normal")
)

summary <- gene_data %>%
  group_by(status) %>%
  summarize(
    average_expression = mean(expression),
    count = n()
  )

print(summary)