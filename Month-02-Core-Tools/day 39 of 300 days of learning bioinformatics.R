# Day 39 — dplyr: Joining Data

#**Goal:** Combine two datasets using dplyr's join functions, mirroring pandas' merge() from Week 5.

## Key concepts:
#`left_join()` — combines two data frames, keeping all rows from the first, matching by a shared column

#Key takeaway: Same merging logic as pandas' pd.merge() (Day 32), dplyr's join functions read clearly as part of a %>% chain.


library(dplyr)

expression_data <- data.frame(
  gene = c("APP", "MAPT", "PSEN1"),
  expression = c(4.2, 3.8, 2.1)
)

annotation_data <- data.frame(
  gene = c("APP", "MAPT", "PSEN1"),
  chromosome = c("21", "17", "14")
)

joined_data <- expression_data %>%
  left_join(annotation_data, by = "gene")

print(joined_data)