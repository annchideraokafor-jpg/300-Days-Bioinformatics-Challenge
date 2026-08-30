import pandas as pd

data = {
    "gene": ["APP", "MAPT", "PSEN1", "APOE", "BACE1"],
    "expression": [4.2, 3.8, 2.1, 5.6, 3.1]
}
df = pd.DataFrame(data)

print(df)
print(df.head())
print(df.info())
print(df.describe())