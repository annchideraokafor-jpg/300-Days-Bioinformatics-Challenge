# Day 30 — pandas: Filtering & Selecting

#**Goal:** Filter rows based on a condition, select specific columns, and find rows by exact match, using pandas.

## Key concepts:
#- `df[df["column"] > value]` — filtering rows by condition
#- `df["column"]` — selecting a single column
#- `df[df["column"] == "value"]` — filtering by exact match

#**Key takeaway:** Same filtering logic as R's data frames (Day 18), just pandas' syntax this time. The underlying logic of data analysis stays consistent across languages, only the syntax shifts.


import pandas as pd

data = {
    "gene": ["APP", "MAPT", "PSEN1", "APOE", "BACE1"],
    "expression": [4.2, 3.8, 2.1, 5.6, 3.1]
}
df = pd.DataFrame(data)

# Filter rows where expression is above 3.5
high_expression = df[df["expression"] > 3.5]
print(high_expression)

# Select just one column
gene_names_only = df["gene"]
print(gene_names_only)

# Filter for a specific gene
specific_gene = df[df["gene"] == "MAPT"]
print(specific_gene)