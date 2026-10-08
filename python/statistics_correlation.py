import pandas as pd

units = [10, 5, 8, 2, 3, 6, 12, 1]
revenue = [150, 200, 120, 240, 120, 150, 180, 120]

data = pd.DataFrame({
    "units": units,
    "revenue": revenue
})

correlation = data["units"].corr(data["revenue"])

print("Correlation between units and revenue:", round(correlation, 3))