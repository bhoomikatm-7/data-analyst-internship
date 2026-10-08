import pandas as pd
import matplotlib.pyplot as plt

orders = pd.DataFrame({
    "product": ["Pen", "Notebook", "Pen", "Stapler", "Notebook", "Marker", "Pen", "Stapler"],
    "units": [10, 5, 8, 2, 3, 6, 12, 1]
})

product_units = orders.groupby("product")["units"].sum()

product_units.plot(kind="bar")

plt.xlabel("Product")
plt.ylabel("Total Units")
plt.title("Total Units by Product")
plt.xticks(rotation=0)

plt.savefig("bar_product_units.png", bbox_inches="tight")

print("Saved bar_product_units.png")