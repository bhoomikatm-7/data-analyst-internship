import pandas as pd
import matplotlib.pyplot as plt

orders = pd.DataFrame({
    "units": [10, 5, 8, 2, 3, 6, 12, 1]
})

plt.boxplot(orders["units"])

plt.ylabel("Units")
plt.title("Boxplot of Units")

plt.savefig("boxplot_units.png", bbox_inches="tight")

print("Saved boxplot_units.png")