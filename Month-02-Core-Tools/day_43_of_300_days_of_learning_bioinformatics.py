#Day 43 — Distributions

#Goal:** Understand what a normal distribution looks like and how mean/standard deviation describe it, foundational for the statistics used in differential expression later.

## Key concepts:
#- np.random.normal() — simulates data following a normal distribution
#- mean and standard deviation — describe the center and spread of data
#- Histograms — visualize the shape of a distribution


import numpy as np
import matplotlib.pyplot as plt

# Simulating a normal distribution of expression values
np.random.seed(42)
expression_values = np.random.normal(loc=3.5, scale=1.0, size=100)

print("Mean:", np.mean(expression_values))
print("Standard deviation:", np.std(expression_values))

plt.hist(expression_values, bins=15, color="steelblue")
plt.title("Simulated Gene Expression Distribution")
plt.xlabel("Expression")
plt.ylabel("Frequency")
plt.savefig("day43_distribution.png")
plt.show()
