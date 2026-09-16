import pandas as pd
import matplotlib.pyplot as plt

file_name = 'svd_sigma_max.csv'

# Tell pandas there is no header
df = pd.read_csv(file_name, header=None)

y = df.iloc[:, 0].dropna().values

# x = force values: 1 N per step, starting at 1
FORCE_INCREMENT = 0.05
x = [(i + 1) * FORCE_INCREMENT for i in range(len(y))]

plt.figure()
plt.plot(x, y, marker='o', markersize=3, linewidth=1.5, color='#1A5EA8')
plt.xlabel('Axial compressive force F [N]')
plt.ylabel('Sensitivity')
plt.title('Sensitivity index vs axial compressive force\npinned-pinned')
plt.grid(True, linestyle='--', alpha=0.5)
plt.tight_layout()
plt.show()