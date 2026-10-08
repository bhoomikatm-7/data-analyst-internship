import pandas as pd
import matplotlib.pyplot as plt

orders = pd.DataFrame({
    "product": ["Pen", "Notebook", "Pen", "Stapler", "Notebook", "Marker", "Pen", "Stapler"],
    "units": [10, 5, 8, 2, 3, 6, 12, 1]
})

product_units = orders.groupby("product")["units"].sum()

plt.pie(
    product_units,
    labels=product_units.index,
    autopct="%1.1f%%"
)

plt.title("Units Sold by Product")

plt.savefig("pie_product_units.png", bbox_inches="tight")

print("Saved pie_product_units.png")