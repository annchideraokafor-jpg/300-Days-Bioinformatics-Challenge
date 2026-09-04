# Day 31 — pandas: Grouping & Aggregating
#
# Goal: Answer questions like "what's the average expression within each
# category" in one line, instead of filtering and calculating manually
# for each group.
#
# Key concepts:
# - .groupby() — group rows by a shared value
# - .mean() — calculate average within each group
# - .value_counts() — count occurrences of each unique value
#
# Key takeaway: This replaces what would otherwise be several lines of
# manual filtering and calculating, one line does the whole job.

import pandas as pd

data = {
    "gene": ["APP", "MAPT", "PSEN1", "APOE", "BACE1", "TREM2"],
    "expression": [4.2, 3.8, 2.1, 5.6, 3.1, 2.9],
    "status": ["high", "high", "normal", "high", "normal", "normal"]
}
df = pd.DataFrame(data)

# Average expression within each status group
grouped = df.groupby("status")["expression"].mean()
print(grouped)

# Count how many genes fall into each status
counts = df["status"].value_counts()
print(counts)