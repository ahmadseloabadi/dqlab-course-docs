# Import numpy
import numpy as np
# Baca dataset
tinggi_badan = np.loadtxt("https://storage.googleapis.com/dqlab-dataset/survei_tinggi_badan.txt", skiprows=1)

# Import matplotlib.pyplot dan seaborn sebagai aliasnya
import matplotlib.pyplot as plt
import seaborn as sns

# Visualisasikan dengan swarmplot variabel tinggi_badan dengan ukuran marker 8
fig, ax = plt.subplots(figsize=(10,4)) 
sns.swarmplot(x=tinggi_badan, size=8, color="darkcyan", edgecolor=None, ax=ax)
ax.grid(axis="x")
plt.xlabel("Tinggi badan (cm)", fontsize=14)
plt.tight_layout()
plt.show()
