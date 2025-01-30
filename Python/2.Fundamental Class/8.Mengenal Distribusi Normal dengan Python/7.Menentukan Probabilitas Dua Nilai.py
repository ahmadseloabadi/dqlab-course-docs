# Gunakan kutip dua untuk setiap string
import numpy as np
# Importlah norm dari scipy.stats
from scipy.stats import norm

# Baca data survei_tinggi_badan.txt dengan numpy loadtxt
tinggi_badan = np.loadtxt("https://storage.googleapis.com/dqlab-dataset/survei_tinggi_badan.txt", skiprows=1)

# Rata-rata dan standar deviasi unbiased tinggi_badan
tb_mean = tinggi_badan.mean()
tb_std = tinggi_badan.std(ddof=1)
# Tentukanlah nilai probabilitas dan probabilitas kumulatif menggunakan 
# distribusi normal untuk tinggi badan, 150 cm dan 170 cm
x = [150, 170]
pdf_x = norm.pdf(x, loc=tb_mean, scale=tb_std)
cdf_x = norm.cdf(x, loc=tb_mean, scale=tb_std)
for x_item, pdf, cdf in zip(x, pdf_x, cdf_x):
    print("Probabilitas x = %d cm adalah %.4f." % (x_item, pdf))
    print("Probabilitas kumulatif x = %d cm adalah %.4f." % (x_item, cdf))


# Tugas
# Selanjutnya aku akan mencoba menentukan nilai probabilitas dan probabilitas kumulatif mengunakan distribusi normal untuk tinggi badan 150 cm dan 170 cm. Untuk itu x-nya dapat aku buat sebagai sebuah list yang berisi kedua nilai tinggi badan tersebut.