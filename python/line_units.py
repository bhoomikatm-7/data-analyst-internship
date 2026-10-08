import pandas as pd
import matplotlib.pyplot as plt

orders = pd.DataFrame({
    "day": [1, 2, 3, 4, 5, 6, 7, 8],
    "units": [10, 5, 8, 2, 3, 6, 12, 1]
})

plt.plot(orders["day"], orders["units"], marker="o")

plt.xlabel("Day")
plt.ylabel("Units")
plt.title("Units Sold by Day")
plt.grid(True)

plt.savefig("line_units.png", bbox_inches="tight")

print("Saved line_units.png")