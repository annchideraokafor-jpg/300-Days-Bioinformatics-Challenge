#Day 44 — Hypothesis Testing Basics

#**Goal:** Run a basic t-test comparing two groups, the same type of test used to determine if a gene is differentially expressed between conditions.

## Key concepts:
#- Null hypothesis — assumes no real difference between groups
#- t-test — compares the means of two groups
#- p-value — probability the observed difference happened by chance


from scipy import stats
import numpy as np

np.random.seed(42)
group_healthy = np.random.normal(loc=3.0, scale=0.8, size=30)
group_disease = np.random.normal(loc=4.2, scale=0.9, size=30)

t_stat, p_value = stats.ttest_ind(group_healthy, group_disease)

print("T-statistic:", round(t_stat, 3))
print("P-value:", round(p_value, 5))

if p_value < 0.05:
    print("Statistically significant difference")
else:
    print("No statistically significant difference")