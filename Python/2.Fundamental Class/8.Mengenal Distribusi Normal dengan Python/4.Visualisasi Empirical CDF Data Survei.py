# Gunakan kutip dua untuk setiap string
import numpy as np
# Import matplotlib.pyplot dan seaborn sebagai aliasnya
import matplotlib.pyplot as plt
import seaborn as sns

# Baca data survei_tinggi_badan.txt dengan numpy loadtxt
tinggi_badan = np.loadtxt("https://storage.googleapis.com/dqlab-dataset/survei_tinggi_badan.txt", skiprows=1)

# Buat figure sebagai canvas dengan ukuran 8 in x 6 in
fig, ax = plt.subplots(figsize=(8, 6))
# plotkan ecdf
sns.ecdfplot(x=tinggi_badan, ax=ax)
# plotkan ecdf komplemen
sns.ecdfplot(x=tinggi_badan, complementary=True, ax=ax)
# set label
ax.set_xlabel("Tinggi badan (cm)", fontsize=12)
ax.set_ylabel("Probabilitas kumulatif", fontsize=12)
ax.grid(axis="y")
plt.legend(["ecdf", "ecdf komplemen"], fontsize=12)
plt.tight_layout()
plt.show()
