# Day 48 — Effect Size

#Goal:** Learn to measure not just whether a difference is statistically significant, but how large that difference actually is.

## Key concepts:
#- Cohen's d — a standardized measure of the size of a difference between two groups
#- Statistical significance != practical significance — a tiny, meaningless difference can still be "significant" with a large enough sample size

import numpy as np

np.random.seed(42)
group_healthy = np.random.normal(loc=3.0, scale=0.8, size=30)
group_disease = np.random.normal(loc=4.2, scale=0.9, size=30)

# Cohen's d: a common effect size measure
mean_diff = np.mean(group_disease) - np.mean(group_healthy)
pooled_std = np.sqrt((np.std(group_healthy, ddof=1)**2 + np.std(group_disease, ddof=1)**2) / 2)
cohens_d = mean_diff / pooled_std

print("Mean difference:", round(mean_diff, 3))
print("Cohen's d (effect size):", round(cohens_d, 3))

if abs(cohens_d) < 0.2:
    interpretation = "small effect"
elif abs(cohens_d) < 0.8:
    interpretation = "medium effect"
else:
    interpretation = "large effect"

print("Interpretation:", interpretation)