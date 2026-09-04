# Day 34 — pandas: Practice Problem

#**Goal:** No new concept, combine this week's pandas skills into one small practice problem: classify, filter, and sort.

## Skills combined:
#- `.apply()` with a lambda — classify each row
#- Filtering with a condition
##- `.sort_values()` — sort the result

#**Key takeaway:** Putting the week's individual pandas skills together into one working script, proof they combine smoothly.

import pandas as pd

data = {
    "gene": ["APP", "MAPT", "PSEN1", "APOE", "BACE1", "TREM2"],
    "expression": [4.2, 3.8, 2.1, 5.6, 3.1, 2.9]
}
df = pd.DataFrame(data)

# Combine filtering, classification, and sorting in one practice problem
df["status"] = df["expression"].apply(lambda x: "high" if x > 3.5 else "normal")
result = df[df["status"] == "high"].sort_values("expression", ascending=False)
print(result)