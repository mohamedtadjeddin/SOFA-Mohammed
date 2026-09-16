import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
from matplotlib.ticker import MultipleLocator

# =========================
# =========================
# Load main data
# =========================
file_name = 'svd_sigma_max.csv'
file_name2 = 'tip_y.csv'

df = pd.read_csv(file_name, header=None)
df2=pd.read_csv(file_name2, header=None)

# Extract data (all steps converged and not converged)

y1_all = df.iloc[::2, 0].dropna().astype(np.float64).values
y2_all = df.iloc[1::2, 0].dropna().astype(np.float64).values
# This is done for the case when the tip goes down vertically so xx keeps track of the Y coordinate of the tip
xx = df2.iloc[:, 0].dropna().astype(np.float64).values

yy1 = y1_all
yy2 = y2_all

# creating the x axis of the plot 
x2 = np.arange(len(yy1))
# =========================
# Load indices 
# =========================
results_df = pd.read_csv('result.csv', header=None)

indices = results_df.values.flatten()



x=indices
# =========================
# Filter data using indices (just converged steps)
# =========================
y1 = y1_all[indices]
y2 = y2_all[indices]

# =========================
# Build x-axis correctly
# =========================


# =========================
# Relative variation
# =========================
"""
y0 = y1[0]
po=yy1[0]

if y0 == 0:
    y_rel1 = np.abs(y1 - y0)
    y_rel2 = np.abs(y2 - y0)
    yp1=np.abs(yy1 - po)
    yp2=np.abs(yy2 - po)
else:
    y_rel1 = np.abs((y1 - y0) / y0)
    y_rel2 = np.abs((y2 - y0) / y0)
    yp1 = np.abs((yy1 - po) / po)
    yp2 = np.abs((yy2 - po) / po)
# Avoid zeros for log scale
eps = 1e-20
y_rel1[y_rel1 < eps] = eps
y_rel2[y_rel2 < eps] = eps

yp1[yp1 < eps] = eps
yp2[yp2 < eps] = eps
# =========================
"""
# Plot converged steps
# =========================
plt.figure(figsize=(10, 6))

plt.plot(
    xx,
    y1,
    marker='o',
    markersize=8,
    linewidth=1,
    color='blue',
    label='The left leg'
)

plt.plot(
    xx,
    y2,
    marker='o',
    markersize=3,
    linewidth=0.8,
    color='red',
    label='The right leg'
)

plt.legend()

plt.yscale('symlog', linthresh=1e-10)

plt.xlabel('steps', fontsize=24, labelpad=15)
plt.ylabel('stability indicator', fontsize=24, labelpad=15)

plt.xticks(fontsize=16)
plt.yticks(fontsize=16)
#ax = plt.gca()
#ax.xaxis.set_major_locator(MultipleLocator(30))
#plt.tight_layout()
#plt.title('Stability analysis of planar parallel robot', fontsize=25)

plt.grid(True, which='both', linestyle='--', alpha=0.5)

#plt.tight_layout()
plt.show()


# Plot everything


plt.figure(figsize=(10, 6))

plt.plot(
    x2,
    y1_all,
    marker='o',
    markersize=5,
    linewidth=0.8,
    color='blue',
    label='The left leg'
)

plt.plot(
    x2,
    y2_all,
    marker='o',
    markersize=3,
    linewidth=0.8,
    color='red',
    label='The right leg'
)

plt.xlabel('steps')
plt.ylabel('stability indicator')
plt.title('all steps')
plt.grid(True, which='both', linestyle='--', alpha=0.5)
plt.legend()
plt.yscale('symlog', linthresh=1e-10)
plt.show()