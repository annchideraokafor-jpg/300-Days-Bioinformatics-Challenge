gene_expression = {"APP": 4.2, "MAPT": 3.8, "PSEN1": 2.1, "APOE": 5.6, "BACE1": 3.1}

# Calculate the actual average
avg_expression = sum(gene_expression.values()) / len(gene_expression)
print("Average:", avg_expression)

# Find genes above that average
above_average = [gene for gene, exp in gene_expression.items() if exp > avg_expression]
print(above_average)