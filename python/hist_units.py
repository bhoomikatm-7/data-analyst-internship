import pandas as pd
import matplotlib.pyplot as plt

orders = pd.DataFrame({
    "units": [10, 5, 8, 2, 3, 6, 12, 1]
})

plt.hist(orders["units"], bins=4)

plt.xlabel("Units")
plt.ylabel("Frequency")
plt.title("Distribution of Units")

plt.savefig("hist_units.png", bbox_inches="tight")

print("Saved hist_units.png")