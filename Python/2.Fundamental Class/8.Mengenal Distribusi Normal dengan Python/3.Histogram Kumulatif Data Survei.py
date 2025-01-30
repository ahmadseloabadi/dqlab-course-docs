# Gunakan kutip dua untuk setiap string
import numpy as np
# Import matplotlib.pyplot dan seaborn sebagai aliasnya
import matplotlib.pyplot as plt
import seaborn as sns

# Baca data survei_tinggi_badan.txt dengan numpy loadtxt
tinggi_badan = np.loadtxt("https://storage.googleapis.com/dqlab-dataset/survei_tinggi_badan.txt", skiprows=1)

# Buat figure sebagai canvas dengan ukuran 8 in x 6 in
fig, ax = plt.subplots(figsize=(8, 6))
# plotkan histogram untuk frekuensi 
sns.histplot(x=tinggi_badan, binwidth=1, binrange=(tinggi_badan.min()-0.5, tinggi_badan.max()+0.5), cumulative=True, ec="w", ax=ax)
# buat sumbu berikutnya agar frekuensi relatif dapat dijadikann pada satu plot
ax1 = ax.twinx()
# plotkan histogram untuk frekuensi relatif
sns.histplot(x=tinggi_badan, stat="probability", binwidth=1, binrange=(tinggi_badan.min()-0.5, tinggi_badan.max()+0.5), cumulative=True, kde=True, ec="w", ax=ax1)
# set label
ax.set_xlabel("Tinggi badan (cm)", fontsize=12) 
ax.set_ylabel("Frekuensi kumulatif", fontsize=12)
ax1.set_ylabel("Probabilitas kumulatif", fontsize=12)
ax1.grid(axis="y")
plt.tight_layout()
plt.show()

# Tips
# Untuk membuat histogram kumulatif berikut dengan fungsi distribusi tidaklah rumit aku akan mengisikan parameter cumulative menjadi True pada kedua penggunaan method .histplot() yang telah diketikkan sebelumnya.