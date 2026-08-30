# Day 28 — Week 4 Recap: One Month In

#**Goal:** Reflect on Month 1 as a whole, Python fundamentals (Weeks 1-2) through R fundamentals (Weeks 3-4).

## Month 1 covered:
#- Python: lists, dictionaries, loops, functions, error handling, classes
#- R: vectors, data frames, custom functions, file I/O, basic plotting

#**Key takeaway:** One month down. Two languages, same underlying logic, genuinely different ways of thinking about data.


gene_data <- data.frame(
  gene = c("APP", "MAPT", "PSEN1", "APOE", "BACE1", "TREM2"),
  expression = c(4.2, 3.8, 2.1, 5.6, 3.1, 2.9)
)

get_status <- function(expression) {
  if (expression > 4.5) return("very high")
  else if (expression > 3.0) return("moderate")
  else return("low")
}

gene_data$status <- sapply(gene_data$expression, get_status)
sorted_data <- gene_data[order(-gene_data$expression), ]
print(sorted_data)

barplot(sorted_data$expression,
        names.arg = sorted_data$gene,
        main = "One Month In: Gene Expression",
        col = "steelblue")

write.csv(sorted_data, "month1_summary.csv", row.names = FALSE)