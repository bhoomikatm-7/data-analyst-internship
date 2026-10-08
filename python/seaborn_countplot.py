import pandas as pd
import seaborn as sns
import matplotlib.pyplot as plt

orders = pd.DataFrame({
    "product": ["Pen", "Notebook", "Pen", "Stapler", "Notebook", "Marker", "Pen", "Stapler"],
    "units": [10, 5, 8, 2, 3, 6, 12, 1]
})

sns.countplot(data=orders, x="product")

plt.xlabel("Product")
plt.ylabel("Count")
plt.title("Product Count")

plt.savefig("seaborn_countplot.png", bbox_inches="tight")

print("Saved seaborn_countplot.png")