import pandas as pd
import matplotlib.pyplot as plt

orders = pd.DataFrame({
    "day": [1, 2, 3, 4, 5, 6, 7, 8],
    "revenue": [150, 200, 120, 240, 120, 150, 180, 120]
})

plt.scatter(orders["day"], orders["revenue"])

plt.xlabel("Day")
plt.ylabel("Revenue")
plt.title("Day vs Revenue")

plt.savefig("scatter_day_revenue.png", bbox_inches="tight")

print("Saved scatter_day_revenue.png")