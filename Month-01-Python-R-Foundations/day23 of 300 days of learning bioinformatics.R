# Day 23 — Functions in R

#**Goal:** Write custom functions in R, then apply them across a whole column using sapply().

#**Key takeaway:** Same concept as Python's def, different syntax. sapply() is R's vectorized way of applying a function to every value at once.

get_status <- function(expression) {
  if (expression > 4.5) {
    return("very high")
  } else if (expression > 3.0) {
    return("moderate")
  } else {
    return("low")
  }
}

print(get_status(4.2))
print(get_status(2.1))

# Apply the function across a whole vector using sapply()
gene_data <- data.frame(
  gene = c("APP", "MAPT", "PSEN1"),
  expression = c(4.2, 3.8, 2.1)
)
gene_data$status <- sapply(gene_data$expression, get_status)
print(gene_data)