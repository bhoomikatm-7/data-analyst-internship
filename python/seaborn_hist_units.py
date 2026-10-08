import pandas as pd
import seaborn as sns
import matplotlib.pyplot as plt

orders = pd.DataFrame({
    "units": [10, 5, 8, 2, 3, 6, 12, 1]
})

sns.histplot(data=orders, x="units")

plt.xlabel("Units")
plt.ylabel("Frequency")
plt.title("Distribution of Units")

plt.savefig("seaborn_hist_units.png", bbox_inches="tight")

print("Saved seaborn_hist_units.png")