import matplotlib.pyplot as plt

revenue = [10, 12, 14, 15, 18, 20, 22, 50]

plt.hist(revenue, bins=4)

plt.xlabel("Revenue")
plt.ylabel("Frequency")
plt.title("Revenue Distribution")

plt.savefig("statistics_revenue_histogram.png", bbox_inches="tight")

print("Saved statistics_revenue_histogram.png")
print("The distribution is right-skewed because of 50.")
print("Median revenue:", 16.5)