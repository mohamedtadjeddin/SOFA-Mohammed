import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
from matplotlib.ticker import MultipleLocator

# =========================
# Load data
# =========================
file_name = 'svd_sigma_max.csv'

df = pd.read_csv(file_name, header=None)

y = df.iloc[:,0].dropna().astype(np.float64).values


results_df = pd.read_csv('result.csv', header=None)

# First column = row indices into svd_sigma_max.csv (which step converged)
# Second column = the x-axis values to plot against (e.g. applied force)
indices = results_df.iloc[:, 0].astype(int).values
x = results_df.iloc[:, 1].astype(np.float64).values

y1 = y[indices]


# =========================
# Force definition
# =========================
FORCE_INCREMENT = 0.005
# Relative variation
# =========================
y0 = y1[0]

print(np.pi)
if y0 == 0:
    y_rel1 = np.abs(y1 - y0)

   
else:
    y_rel1 = np.abs((y1 - y0) / y0)

   

# Avoid zeros for log scale
eps = 2e-20
y_rel1[y_rel1 < eps] = eps




# Plot (UNCHANGED)
# =========================
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

# Plot
# =========================
plt.figure(figsize=(10, 6))

plt.plot(
    x,
    y1,
    marker='o',
    markersize=3,
    linewidth=1.5
)



plt.xlabel('Axial compressive force F [N]', fontsize=20, labelpad=20)
plt.ylabel('stability indicator', fontsize=20, labelpad=20)
# Axis numbers
plt.xticks(fontsize=14)
plt.yticks(fontsize=14)
#plt.xticks([])
#plt.yticks([])

plt.title('')

plt.grid(True, which='both', linestyle='--', alpha=0.5)
ax = plt.gca()
ax.xaxis.set_major_locator(MultipleLocator(0.1))
plt.tight_layout()
plt.show()