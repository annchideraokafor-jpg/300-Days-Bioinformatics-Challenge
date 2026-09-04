# Day 35 — pandas Week Recap
#
# Goal: Consolidate Week 5's pandas skills before moving into dplyr next week.
#
# This week covered:
# - Intro to pandas (DataFrames, .head(), .info(), .describe())
# - Filtering and selecting
# - Grouping and aggregating
# - Merging datasets
# - Combining everything into practice problems


import pandas as pd

data = {
    "gene": ["APP", "MAPT", "PSEN1", "APOE", "BACE1"],
    "expression": [4.2, 3.8, 2.1, 5.6, 3.1]
}
df = pd.DataFrame(data)

df["status"] = df["expression"].apply(lambda x: "high" if x > 3.5 else "normal")
summary = df.groupby("status")["expression"].agg(["mean", "count"])

print(df.sort_values("expression", ascending=False))
print(summary)
