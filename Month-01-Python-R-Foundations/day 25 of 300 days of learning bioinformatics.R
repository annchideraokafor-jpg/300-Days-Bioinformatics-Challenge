# Day 25 — Reading Files in R

#**Goal:** Import and inspect a CSV file, R's version of file I/O.

#**Key takeaway:** R's built-in CSV functions make reading/writing tabular data much simpler than Python's manual file handling, since data frames map naturally to CSV structure


# Writing a CSV first (so we have something to read)
gene_data <- data.frame(
  gene = c("APP", "MAPT", "PSEN1", "APOE"),
  expression = c(4.2, 3.8, 2.1, 5.6)
)
write.csv(gene_data, "gene_expression.csv", row.names = FALSE)

# Reading it back in
loaded_data <- read.csv("gene_expression.csv")
print(loaded_data)

# Inspecting the loaded data
str(loaded_data)
head(loaded_data)