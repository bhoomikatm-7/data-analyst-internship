import numpy as np

revenue = np.array([10, 12, 14, 15, 18, 20, 22, 50], dtype=float)

q1, median, q3 = np.percentile(revenue, [25, 50, 75])

iqr = q3 - q1

print("Q1:", q1)
print("Median:", median)
print("Q3:", q3)
print("IQR:", iqr)