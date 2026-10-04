library(dplyr)

gene_data <- data.frame(
  gene = c("APP", "MAPT", "PSEN1", "APOE", "BACE1", "TREM2"),
  expression = c(4.2, 3.8, 2.1, 5.6, 3.1, 2.9)
)

annotation_data <- data.frame(
  gene = c("APP", "MAPT", "PSEN1", "APOE", "BACE1", "TREM2"),
  chromosome = c("21", "17", "14", "19", "11", "6")
)

final_report <- gene_data %>%
  left_join(annotation_data, by = "gene") %>%
  mutate(status = ifelse(expression > 3.5, "high", "normal")) %>%
  group_by(status) %>%
  mutate(group_average = mean(expression)) %>%
  ungroup() %>%
  arrange(desc(expression))

print(final_report)