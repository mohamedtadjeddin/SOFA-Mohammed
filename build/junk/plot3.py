import pandas as pd
import numpy as np
import matplotlib.pyplot as plt

# =========================
# Load data
# =========================
file_name = 'svd_sigma_max.csv'

df = pd.read_csv(file_name, header=None)

y1 = df.iloc[::2, 0].dropna().astype(np.float64).values
y2 = df.iloc[1::2, 0].dropna().astype(np.float64).values
# =========================
# Force definition
# =========================
FORCE_INCREMENT = 0.01

x = np.arange(1, len(y1) + 1) * FORCE_INCREMENT

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
y0 = y1[0]

if y0 == 0:
    y_rel1 = np.abs(y1 - y0)
    y_rel2 = np.abs(y2 - y0)
else:
    y_rel1 = np.abs((y1 - y0) / y0)
    y_rel2 = np.abs((y2 - y0) / y0)
# Avoid zeros for log scale
eps = 1e-3
y_rel1[y_rel1 < eps] = eps
y_rel2[y_rel2 < eps] = eps
# =========================
# Plot
# =========================
plt.figure(figsize=(10, 6))

plt.plot(
    x,
    y_rel1,
    marker='o',
    markersize=3,
    linewidth=0.8,
    color='blue',
    label='The left leg'
)

plt.plot(
    x,
    y_rel2,
    marker='o',
    markersize=3,
    linewidth=0.8,
    color='red',
    label='The right leg'
)

plt.legend()

plt.yscale('log')

plt.xlabel('Time(s)')
plt.ylabel('stability indicator (1/(min_k_eig)^2)')

plt.title('Stability analysis of planar parallel robot')

plt.grid(True, which='both', linestyle='--', alpha=0.5)

plt.tight_layout()
plt.show()