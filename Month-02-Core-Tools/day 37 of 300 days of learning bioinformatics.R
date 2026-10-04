# Day 37 — dplyr: mutate() & arrange()

#Goal:** Chain multiple dplyr steps together in one readable flow.

## Key concepts:
# `mutate()` — add a new column
#`arrange(desc(...))` — sort in descending order
# Chaining multiple steps with %>% in one flow

#Key takeaway:** dplyr's chained syntax makes multi-step operations easier to read than nested base R code.


library(dplyr)

gene_data <- data.frame(
  gene = c("APP", "MAPT", "PSEN1", "APOE", "BACE1"),
  expression = c(4.2, 3.8, 2.1, 5.6, 3.1)
)

result <- gene_data %>%
  mutate(status = ifelse(expression > 3.5, "high", "normal")) %>%
  arrange(desc(expression))

print(result)