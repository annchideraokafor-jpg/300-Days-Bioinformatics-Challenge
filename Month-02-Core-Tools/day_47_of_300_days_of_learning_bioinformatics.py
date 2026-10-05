# Day 47 — Correlation

#Goal:** Understand correlation coefficients, how to measure whether two genes' expression values tend to move together.

## Key concepts:
#- Pearson correlation (r) — ranges from -1 (perfectly opposite) to +1 (perfectly together), 0 means no linear relationship
#- Correlation != causation — two genes correlating doesn't mean one causes the other's expression
#- Scatter plots visualize the relationship directly


import numpy as np
from scipy import stats
import matplotlib.pyplot as plt

np.random.seed(42)
gene_a_expression = np.random.normal(loc=4.0, scale=1.0, size=30)
# Gene B correlated with Gene A, plus some noise
gene_b_expression = gene_a_expression * 0.8 + np.random.normal(loc=0, scale=0.5, size=30)

correlation, p_value = stats.pearsonr(gene_a_expression, gene_b_expression)

print("Correlation coefficient (r):", round(correlation, 3))
print("P-value:", round(p_value, 5))

plt.scatter(gene_a_expression, gene_b_expression, color="steelblue")
plt.title(f"Gene A vs Gene B Expression (r = {round(correlation, 2)})")
plt.xlabel("Gene A Expression")
plt.ylabel("Gene B Expression")
plt.savefig("day47_correlation.png")
plt.show()