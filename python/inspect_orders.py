import pandas as pd

raw = pd.read_csv("../DATASETS/orders_messy.csv")

print("Shape:", raw.shape)

print("\n--- First 5 rows ---")
print(raw.head())

print("\n--- Last 5 rows ---")
print(raw.tail())

print("\n--- Data Types ---")
print(raw.dtypes)

print("\n--- Information ---")
raw.info()

print("\n--- Missing Values ---")
print(raw.isnull().sum())

print("\n--- Full-row duplicates ---")
print(raw.duplicated().sum())

print("\n--- Duplicate order IDs ---")
print(raw.duplicated(subset=["order_id"]).sum())

print("\n--- Unique Categories ---")
print(raw["category"].unique())