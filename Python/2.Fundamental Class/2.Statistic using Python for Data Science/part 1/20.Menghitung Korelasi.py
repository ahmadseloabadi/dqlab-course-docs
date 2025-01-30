import pandas as pd
raw_data = pd.read_csv("https://storage.googleapis.com/dqlab-dataset/dataset_statistic.csv", sep=';')

# menghitung korelasi dari setiap pasang variabel pada raw_data
print (raw_data.corr())

# mencari korelasi 'kendall' untuk tiap pasang variabel
print (raw_data.corr(method='kendall'))
 
# mencari korelasi 'spearman' untuk tiap pasang variabel
print (raw_data.corr(method='spearman'))

# Teori
# Korelasi Pearson atau sering juga disebut sebagai Pearson's product moment correlation adalah pengukuran korelasi parametrik yang menghasilkan koefisien korelasi. Koefisien korelasi ini dapat digunakan untuk mengukur kekuatan hubungan atau asosiasi linier antara dua variabel.
# Korelasi Spearman atau sering juga disebut sebagai Spearman's rank correlation adalah pengukuran korelasi non-parametrik. Artinya kita mencoba mengukur hubungan antara kedua variabel tanpa menghiraukan asumsi seperti distribusi dari kedua variabel dan asumsi lainnya.
# Korelasi Kendall atau sering juga disebut juga sebagai Kendall's tank correlation atau korelasi Tau (τ) adalah pengukuran korelasi non-parametrik.

# ==========================================================
# Jarak Ukuran Nilai Korelasi
# ==========================================================
# Korelasi mengukur hubungan antara dua variabel, dengan nilai antara -1 hingga 1.
# Berikut adalah interpretasi dari berbagai rentang nilai korelasi:

# r = 1      → Korelasi sempurna positif (X meningkat, Y juga meningkat)
# 0.75 ≤ r < 1 → Korelasi kuat positif
# 0.50 ≤ r < 0.75 → Korelasi sedang positif
# 0.25 ≤ r < 0.50 → Korelasi lemah positif
# 0 ≤ r < 0.25 → Korelasi sangat lemah atau hampir tidak ada
# r = 0      → Tidak ada korelasi (X dan Y tidak berhubungan)
# -0.25 < r ≤ 0 → Korelasi sangat lemah negatif
# -0.50 < r ≤ -0.25 → Korelasi lemah negatif
# -0.75 < r ≤ -0.50 → Korelasi sedang negatif
# -1 < r ≤ -0.75 → Korelasi kuat negatif
# r = -1     → Korelasi sempurna negatif (X meningkat, Y menurun)
