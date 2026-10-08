import pandas as pd

raw = pd.read_csv("../DATASETS/orders_messy.csv")

print(raw)

df = raw.copy()

# Remove extra spaces and fix capitalization
df["customer_name"] = df["customer_name"].str.strip().str.title()
df["city"] = df["city"].str.strip().str.title()
df["category"] = df["category"].str.strip().str.title()
df["status"] = df["status"].str.strip().str.title()

print(df[["customer_name", "city", "category", "status"]])

df = df.drop_duplicates(subset=["order_id"], keep="first")
print(df)

df = df[df["category"].isin(["Electronics", "Grocery", "Stationery"])]
print(df)

df = df[df["units"].notna() & (df["units"] >= 1)]
print(df)

df = df[df["amount"].notna() & (df["amount"] >= 0)]
print(df)

df["order_date"] = pd.to_datetime(df["order_date"], format="mixed", errors="coerce")
df = df[df["order_date"].notna()]
print(df)

df = df[df["units"] < 1000]
print(df)

df = df.reset_index(drop=True)
print(df)

df.to_csv("../DATASETS/orders_clean.csv", index=False)
print("orders_clean.csv saved successfully")

print("Unique IDs:", df["order_id"].is_unique)
print("Categories OK:", df["category"].isin(["Electronics", "Grocery", "Stationery"]).all())
print("Units OK:", (df["units"] >= 1).all())
print("Amount OK:", df["amount"].notna().all())
print("Dates OK:", df["order_date"].notna().all())