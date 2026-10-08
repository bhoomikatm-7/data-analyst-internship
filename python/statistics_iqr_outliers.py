import numpy as np

revenue = np.array([10, 12, 14, 15, 18, 20, 22, 50], dtype=float)

q1, q3 = np.percentile(revenue, [25, 75])

iqr = q3 - q1

lower_fence = q1 - 1.5 * iqr
upper_fence = q3 + 1.5 * iqr

outliers = revenue[(revenue < lower_fence) | (revenue > upper_fence)]

print("Q1:", q1)
print("Q3:", q3)
print("IQR:", iqr)
print("Lower fence:", lower_fence)
print("Upper fence:", upper_fence)
print("Outliers:", outliers)