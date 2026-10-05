# Day 49 — Practice Problem: Combining Statistics

#**Goal:** No new concept, combine this week's statistics skills, hypothesis testing, effect size, confidence intervals, into one analysis.

#**Key takeaway:** A complete statistical picture needs all three pieces together, p-value (is it likely real), effect size (does it matter), confidence interval (how precise is the estimate). Any one alone can be misleading


import numpy as np
from scipy import stats

np.random.seed(42)
healthy = np.random.normal(loc=3.0, scale=0.8, size=30)
disease = np.random.normal(loc=4.2, scale=0.9, size=30)

# Hypothesis test
t_stat, p_value = stats.ttest_ind(healthy, disease)

# Effect size
mean_diff = np.mean(disease) - np.mean(healthy)
pooled_std = np.sqrt((np.std(healthy, ddof=1)**2 + np.std(disease, ddof=1)**2) / 2)
cohens_d = mean_diff / pooled_std

# Confidence interval for the disease group mean
sem = stats.sem(disease)
ci = stats.t.interval(0.95, len(disease)-1, loc=np.mean(disease), scale=sem)

print(f"P-value: {p_value:.5f}")
print(f"Effect size (Cohen's d): {cohens_d:.3f}")
print(f"95% CI for disease group mean: ({ci[0]:.3f}, {ci[1]:.3f})")

if p_value < 0.05 and abs(cohens_d) > 0.8:
    print("Statistically significant AND practically meaningful difference")
elif p_value < 0.05:
    print("Statistically significant, but effect size is small/moderate")
else:
    print("No statistically significant difference")