# Day 27 — Troubleshooting Session

#**Goal:** Practice spotting and fixing common R errors: mismatched brackets, = vs ==, 0 vs 1 indexing.

#**Key takeaway:** Debugging is its own skill, separate from knowing syntax. Recognizing error patterns quickly saves real time.


# Bug 1: mismatched parentheses

gene_data <- data.frame(
  gene = c("APP", "MAPT", "PSEN1"),
  expression = c(4.2, 3.8, 2.1
  )
  
  # Fixed version:
  gene_data <- data.frame(
    gene = c("APP", "MAPT", "PSEN1"),
    expression = c(4.2, 3.8, 2.1)
  )
  
  # Bug 2: using = instead of == for comparison
  # if (gene_data$expression[1] = 4.2) { ... }   # this errors
  
  # Fixed:
  if (gene_data$expression[1] == 4.2) {
    print("Match found")
  }
  
  # Bug 3: wrong indexing (forgetting R starts at 1)
  # print(gene_data$gene[0])   # this returns nothing useful
  
  # Fixed:
  print(gene_data$gene[1])