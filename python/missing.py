import pandas as pd

data = {
    "Name": ["Asha", "Rahul", "Priya", "Arun"],
    "Age": [22, None, 23, 25],
    "Salary": [30000, 45000, None, 50000]
}

df = pd.DataFrame(data)

print("Before cleaning:")
print(df)

df["Age"] = df["Age"].fillna(df["Age"].mean())
df["Salary"] = df["Salary"].fillna(df["Salary"].mean())

print("\nAfter cleaning:")
print(df)