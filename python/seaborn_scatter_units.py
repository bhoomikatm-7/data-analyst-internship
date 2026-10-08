import pandas as pd
import seaborn as sns
import matplotlib.pyplot as plt

orders = pd.DataFrame({
    "day": [1, 2, 3, 4, 5, 6, 7, 8],
    "product": ["Pen", "Notebook", "Pen", "Stapler", "Notebook", "Marker", "Pen", "Stapler"],
    "units": [10, 5, 8, 2, 3, 6, 12, 1]
})

sns.scatterplot(
    data=orders,
    x="day",
    y="units",
    hue="product"
)

plt.xlabel("Day")
plt.ylabel("Units")
plt.title("Day vs Units by Product")

plt.savefig("seaborn_scatter_units.png", bbox_inches="tight")

print("Saved seaborn_scatter_units.png")