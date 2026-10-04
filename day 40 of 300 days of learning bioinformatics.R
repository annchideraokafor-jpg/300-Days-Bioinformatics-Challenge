
# Day 40 — dplyr Practice Problem

#Goal:** No new concept, combine this week's dplyr skills into one chained pipeline: classify, filter, sort.

#Key takeaway:** A single %>% chain can replace what would otherwise be several separate lines of code, classify, then filter, then sort, all read left to right.

library(dplyr)

gene_data <- data.frame(
  gene = c("APP", "MAPT", "PSEN1", "APOE", "BACE1", "TREM2"),
  expression = c(4.2, 3.8, 2.1, 5.6, 3.1, 2.9)
)

result <- gene_data %>%
  mutate(status = ifelse(expression > 3.5, "high", "normal")) %>%
  filter(status == "high") %>%
  arrange(desc(expression))

print(result)