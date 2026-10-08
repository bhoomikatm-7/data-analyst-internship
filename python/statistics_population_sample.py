import numpy as np
import pandas as pd

revenue = np.array([10, 12, 14, 15, 18, 20, 22, 50], dtype=float)

print("Population variance:", round(np.var(revenue), 2))
print("Sample variance:", round(np.var(revenue, ddof=1), 2))

print("Population SD:", round(np.std(revenue), 2))
print("Sample SD:", round(np.std(revenue, ddof=1), 2))

print("Pandas sample variance:", round(pd.Series(revenue).var(), 2))
print("Pandas sample SD:", round(pd.Series(revenue).std(), 2))