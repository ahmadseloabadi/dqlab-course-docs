# Gunakan kutip dua untuk setiap string
import numpy as np
# Import matplotlib.pyplot dan seaborn sebagai aliasnya
# dan importlah norm dari scipy.stats
import matplotlib.pyplot as plt
import seaborn as sns
from scipy.stats import norm

# Baca data survei_tinggi_badan.txt dengan numpy loadtxt
tinggi_badan = np.loadtxt("https://storage.googleapis.com/dqlab-dataset/survei_tinggi_badan.txt", skiprows=1)

# Rata-rata dan standar deviasi unbiased tinggi_badan
tb_mean = tinggi_badan.mean()
tb_std = tinggi_badan.std(ddof=1)
# pdf dan cdf berdasarkan data tinggi badan
pdf_tb = norm.pdf(tinggi_badan, loc=tb_mean, scale=tb_std)
cdf_tb = norm.cdf(tinggi_badan, loc=tb_mean, scale=tb_std)

# Buat figure sebagai canvas dengan ukuran 10 in x 5 in
# dengan dua suplots (2 kolom)
fig, axs = plt.subplots(1, 2, figsize=(10, 5))
# plotkan kde dan pdf_tb pada subplot pertama: axs[0]
sns.kdeplot(x=tinggi_badan, lw=2, ax=axs[0])
sns.lineplot(x=tinggi_badan, y=pdf_tb, lw=2, ax=axs[0])
axs[0].legend(["kde", "pdf_tb"], fontsize=12)
# plotkan kde kumulatif dan cdf_tb pada subplot kedua: axs[1]
sns.kdeplot(x=tinggi_badan, cumulative=True, lw=2, ax=axs[1])
sns.lineplot(x=tinggi_badan, y=cdf_tb, lw=2, ax=axs[1])
axs[1].legend(["kde kumulatif", "cdf_tb"], fontsize=12)
# set label
axs[0].set_ylabel("Probabilitas", fontsize=12)
for ax in axs:
    ax.set_xlabel("Tinggi badan (cm)", fontsize=12)
    ax.grid(axis="y")
ax.set_ylabel("Probabilitas kumulatif", fontsize=12)
plt.tight_layout()
plt.show()

# Tugas
# Untuk memplotkan pdf dan csd ini aku akan menggunakan seaborn.lineplot() dengan parameter utamanya yaitu x, y, dan ax. Di sini x merupakan nilai dalah arah sumbu-x yaitu array tinggi_badan, dan y merupakan nilai pdf/cdf tinggi_badan yang telah dihitung.