import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
from matplotlib.ticker import MultipleLocator

# =========================
# Load data
# =========================
file_name = 'svd_sigma_max.csv'

df = pd.read_csv(file_name, header=None)

y = df.iloc[50:,0].dropna().astype(np.float64).values

# =========================
# Force definition
# =========================
FORCE_INCREMENT = 0.01

x = np.arange(1, len(y) + 1) * FORCE_INCREMENT

# =========================
# Define maximum load manually
# =========================
#MAX_LOAD = 0.7

# Skip first 10%
#START_LOAD = 0.1* MAX_LOAD

# =========================
# Keep only data after 10%
# =========================
#mask = x >= START_LOAD

#x = x[mask]
#y = y[mask]

# =========================
# Relative variation
# =========================
y0 = y[0]

if y0 == 0:
    y_rel = np.abs(y - y0)
else:
    y_rel = np.abs((y - y0) / y0)

# Avoid zeros for log scale
eps = 1e-10
y_rel[y_rel < eps] = eps

# =========================
# Plot
# =========================
plt.figure(figsize=(10, 6))

plt.plot(
    x,
    y_rel,
    marker='o',
    markersize=3,
    linewidth=1.5
)

plt.yscale('log')

plt.xlabel('Axial compressive force F [N]')
plt.ylabel('instability indicator')

plt.title('Beam instability')

plt.grid(True, which='both', linestyle='--', alpha=0.5)
ax = plt.gca()
ax.xaxis.set_major_locator(MultipleLocator(0.2))
plt.tight_layout()
plt.show()
