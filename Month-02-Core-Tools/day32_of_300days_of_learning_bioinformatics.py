# Day 32 — pandas: Merging & Combining Data
#
# Goal: Combine two separate datasets into one, matched by a shared column.
#
# Key concepts:
# - pd.merge(df1, df2, on="column") — joins two DataFrames on a shared key
#
# Key takeaway: Real datasets almost never come as one complete table.
# Learning to merge related pieces together (expression data + annotation
# data) is a core skill, not an edge case.

import pandas as pd

expression_data = pd.DataFrame({
    "gene": ["APP", "MAPT", "PSEN1"],
    "expression": [4.2, 3.8, 2.1]
})

annotation_data = pd.DataFrame({
    "gene": ["APP", "MAPT", "PSEN1"],
    "chromosome": ["21", "17", "14"]
})

merged = pd.merge(expression_data, annotation_data, on="gene")
print(merged)