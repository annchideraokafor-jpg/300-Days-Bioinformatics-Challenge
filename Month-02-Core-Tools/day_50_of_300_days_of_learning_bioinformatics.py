# Day 50 — Week 7 Recap: Biostatistics Basics

#**Goal:** Consolidate the whole week: distributions, hypothesis testing, FDR correction, confidence intervals, correlation, and effect size.

## Week 7 covered:
#- Distributions (mean, std dev, histograms)
#- Hypothesis testing (t-tests, p-values)
#- Multiple testing correction (FDR)
#- Confidence intervals
#- Correlation
#- Effect size (Cohen's d)

#Key takeaway:** This week simulated, in miniature, almost exactly what Phase 3's differential expression analysis will do for real: test many genes at once, correct for multiple testing, and judge results by both significance and effect size, not significance alone.


import numpy as np
from scipy import stats
from statsmodels.stats.multitest import multipletests

np.random.seed(42)

# Simulate 10 "genes" with healthy vs disease expression levels
results = []
for i in range(10):
    healthy = np.random.normal(loc=3.0, scale=0.8, size=20)
    disease = np.random.normal(loc=3.0 + np.random.choice([0, 1.2]), scale=0.9, size=20)
    t_stat, p_value = stats.ttest_ind(healthy, disease)
    mean_diff = np.mean(disease) - np.mean(healthy)
    results.append({"gene": f"Gene_{i+1}", "p_value": p_value, "mean_diff": mean_diff})

p_values = [r["p_value"] for r in results]
reject, corrected_p, _, _ = multipletests(p_values, method="fdr_bh")

for i, r in enumerate(results):
    print(f"{r['gene']}: raw p={r['p_value']:.4f}, corrected p={corrected_p[i]:.4f}, "
          f"mean diff={r['mean_diff']:.2f}, significant={reject[i]}")