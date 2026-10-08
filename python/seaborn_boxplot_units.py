import pandas as pd
import seaborn as sns
import matplotlib.pyplot as plt

orders = pd.DataFrame({
    "product": ["Pen", "Notebook", "Pen", "Stapler", "Notebook", "Marker", "Pen", "Stapler"],
    "units": [10, 5, 8, 2, 3, 6, 12, 1]
})

sns.boxplot(data=orders, x="product", y="units")

plt.xlabel("Product")
plt.ylabel("Units")
plt.title("Units Distribution by Product")

plt.savefig("seaborn_boxplot_units.png", bbox_inches="tight")

print("Saved seaborn_boxplot_units.png")