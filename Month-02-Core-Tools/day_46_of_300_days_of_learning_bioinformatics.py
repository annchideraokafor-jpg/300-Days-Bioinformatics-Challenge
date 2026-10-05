# Day 46 — Confidence Intervals

#Goal:** Understand what a confidence interval actually represents, and how to calculate one for a sample mean.

## Key concepts:
#- stats.sem() — standard error of the mean, how much the sample mean might vary
#- stats.t.interval() — calculates a confidence interval using the t-distribution
#- A 95% CI means: if you repeated this sampling many times, 95% of the calculated intervals would contain the true population mean

#Key takeaway:** A confidence interval gives a range of plausible values, not just a single point estimate, useful context alongside a p-value, not a replacement for one.


import numpy as np
from scipy import stats

np.random.seed(42)
expression_values = np.random.normal(loc=3.5, scale=1.0, size=30)

mean_exp = np.mean(expression_values)
sem = stats.sem(expression_values)  # standard error of the mean
confidence_interval = stats.t.interval(0.95, len(expression_values)-1, loc=mean_exp, scale=sem)

print("Mean expression:", round(mean_exp, 3))
print("95% Confidence Interval:", tuple(round(x, 3) for x in confidence_interval))