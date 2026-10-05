# Day 45 — Multiple Testing & False Discovery Rate

#Goal: Understand why testing thousands of genes at once requires correcting p-values, and how FDR correction works.

## Key concepts:
#- Multiple testing problem — testing many hypotheses increases the chance of false positives by chance alone
#- False Discovery Rate (FDR) — a method to control for this
#- multipletests() — applies FDR correction (Benjamini-Hochberg method)

#Key takeaway: A single p-value < 0.05 means something different when you're testing one gene versus testing 20,000 genes at once. This is exactly why "significant" results in real RNA-seq studies need correction before being trusted.


from scipy import stats
from statsmodels.stats.multitest import multipletests
import numpy as np

np.random.seed(42)
p_values = np.random.uniform(0, 0.1, 20)

reject, corrected_p_values, _, _ = multipletests(p_values, method="fdr_bh")

for i in range(len(p_values)):
    print(f"Gene {i+1}: raw p={p_values[i]:.4f}, corrected p={corrected_p_values[i]:.4f}, significant={reject[i]}")