# Gunakan kutip dua untuk setiap string
import numpy as np
# Import matplotlib.pyplot dan seaborn sebagai aliasnya
import matplotlib.pyplot as plt
import seaborn as sns

# Baca data survei_tinggi_badan.txt dengan numpy loadtxt
tinggi_badan = np.loadtxt("https://storage.googleapis.com/dqlab-dataset/survei_tinggi_badan.txt", skiprows=1)

# Buat figure sebagai canvas dengan ukuran 10 in x 5 in
# dengan dua suplots (2 kolom)
fig, axs = plt.subplots(1, 2, figsize=(10, 5))
# plotkan pdf pada subplot pertama: axs[0]
sns.kdeplot(x=tinggi_badan, lw=3, ax=axs[0])
# plotkan cdf dan ecdf pada subplot kedua: axs[1]
sns.kdeplot(x=tinggi_badan, cumulative=True, lw=3, ax=axs[1])
sns.ecdfplot(x=tinggi_badan, lw=2, ax=axs[1])
# set label
axs[0].set_ylabel("Probabilitas", fontsize=12)
for ax in axs:
    ax.set_xlabel("Tinggi badan (cm)", fontsize=12)
    ax.grid(axis="y")
ax.set_ylabel("Probabilitas kumulatif", fontsize=12)
ax.legend(["cdf", "ecdf"], fontsize=12)
plt.tight_layout()
plt.show()
