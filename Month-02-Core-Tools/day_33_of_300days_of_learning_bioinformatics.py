# Day 33 — pandas Week Recap
#
# Goal: No new concept, combining this week's pandas skills into one script:
# classify, sort, group, and summarize.
#
# Key concepts recapped:
# - .apply() with a lambda — classify each row
# - .sort_values() — sort the DataFrame
# - .groupby().agg() — summarize multiple statistics per group at once
# Key takeaway: One week of pandas, and these five operations
# (filter, select, group, merge, classify) cover most of what real
# day-to-day data analysis actually looks like.


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