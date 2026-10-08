import pandas as pd
import seaborn as sns
import matplotlib.pyplot as plt

orders = pd.DataFrame({
    "product": ["Pen", "Notebook", "Pen", "Stapler", "Notebook", "Marker", "Pen", "Stapler"],
    "revenue": [150, 200, 120, 240, 120, 150, 180, 120]
})

sns.barplot(
    data=orders,
    x="product",
    y="revenue",
    errorbar=None
)

plt.xlabel("Product")
plt.ylabel("Mean Revenue")
plt.title("Mean Revenue by Product")

plt.savefig("seaborn_bar_mean.png", bbox_inches="tight")

print("Saved seaborn_bar_mean.png")