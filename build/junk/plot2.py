import pandas as pd
import numpy as np
import matplotlib.pyplot as plt

# =========================
# Load data
# =========================
file_name = 'svd_sigma_max.csv'

df = pd.read_csv(file_name, header=None)

# Original full data
y_full = df.iloc[:, 0].dropna().astype(np.float64).values

# =========================
# Fetching strategy
# Skip first 3 lines
# Then:
# take 1 line
# skip 4 lines
# repeat
# =========================
y = y_full[148::150]

# =========================
# Force definition
# =========================
FORCE_INCREMENT = 0.005

x = np.arange(1, len(y) + 1) * FORCE_INCREMENT

# =========================
# Relative variation
# =========================
y0 = y[0]

if y0 == 0:
    y_rel = np.abs(y - y0)
else:
    y_rel = np.abs((y - y0) / y0)

# Avoid zeros for log scale
eps = 1e-15
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
plt.ylabel('stability')

plt.title('beam adapter (7,0.6,1e3) --- P_analytic = 5.1255N')

plt.grid(True, which='both', linestyle='--', alpha=0.5)

plt.tight_layout()
plt.show()
