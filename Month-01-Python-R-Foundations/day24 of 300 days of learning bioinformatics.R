# Day 24 — Conditionals & Loops in R

#**Goal:** Practice traditional for loops and if/else in R directly, understanding when loops are still useful even in a vectorized language.

#**Key takeaway:** R can loop just like Python, it's just not always the preferred approach. Good to know both.

genes <- c("APP", "MAPT", "PSEN1")
expression_values <- c(4.2, 3.8, 2.1)

# A traditional for loop in R
for (i in 1:length(genes)) {
  if (expression_values[i] > 3.5) {
    print(paste(genes[i], "is highly expressed"))
  } else {
    print(paste(genes[i], "is not highly expressed"))
  }
}