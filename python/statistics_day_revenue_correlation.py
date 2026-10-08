import pandas as pd

day = [1, 2, 3, 4, 5, 6, 7, 8]
revenue = [150, 200, 120, 240, 120, 150, 180, 120]

data = pd.DataFrame({
    "day": day,
    "revenue": revenue
})

correlation = data["day"].corr(data["revenue"])

print("Correlation between day and revenue:", round(correlation, 3))