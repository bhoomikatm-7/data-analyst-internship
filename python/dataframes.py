import pandas as pd

data = {
    "Name": ["Asha", "Rahul", "Priya", "Arun"],
    "Age": [22, 24, 23, 25],
    "Salary": [30000, 45000, 35000, 50000]
}

df = pd.DataFrame(data)

print(df)