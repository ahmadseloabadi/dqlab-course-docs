# Import numpy
import numpy as np
# Baca dataset
tinggi_badan = np.loadtxt("https://storage.googleapis.com/dqlab-dataset/survei_tinggi_badan.txt", skiprows=1)

# Import matplotlib.pyplot dan seaborn sebagai aliasnya
import matplotlib.pyplot as plt
import seaborn as sns

ig, ax = plt.subplots(figsize=(10,4))
# Plotkanlah boxplot pada data tinggi_badan dengan nilai whis 1.5
sns.boxplot(x=tinggi_badan, whis=1.5, color="greenyellow", ax=ax)
# Plotkan kembali swarmplot
sns.swarmplot(x=tinggi_badan, size=8, color="darkcyan", edgecolor=None, ax=ax)
ax.grid(axis="x")
plt.xlabel("Tinggi badan (cm)", fontsize=14)
plt.tight_layout()
plt.show()

# Note
# seaborn.boxlot(x=nama_variabel, whis=pengali_IQR). Parameter whis ini merupakan besarnya pengali IQR untuk menentukan dimanakah posisi lower dan upper whiskernya nanti, whis ini tentu bertipe float lho ya.
