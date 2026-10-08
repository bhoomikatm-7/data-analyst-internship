import pandas as pd
import seaborn as sns
import matplotlib.pyplot as plt

orders = pd.DataFrame({
    "units": [10, 5, 8, 2, 3, 6, 12, 1],
    "revenue": [150, 200, 120, 240, 120, 150, 180, 120]
})

correlation = orders[["units", "revenue"]].corr()

sns.heatmap(correlation, annot=True, cmap="coolwarm", vmin=-1, vmax=1)

plt.title("Correlation Between Units and Revenue")

plt.savefig("seaborn_heatmap.png", bbox_inches="tight")

print("Saved seaborn_heatmap.png")