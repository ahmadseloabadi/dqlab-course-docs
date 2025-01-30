# Import numpy sebagai aliasnya np
import numpy as np
# Jumlah anggota populasi
N = 8963 
# Proporsi
p = 0.25
# Selang kepercayaan (confidence interval)
ci = [0.70, 0.75, 0.80, 0.85, 0.92, 0.95, 0.96, 0.98, 0.99, 0.999]
# z-score
z = [1.04,1.15,1.28,1.44,1.75,1.96,2.05,2.33,2.58,3.29]
z = np.array(z)
# Margin of error
e = 0.05
# Perhitungan ukuran sampel, n
n_aksen = z**2 * p * (1 - p) / e**2
n = np.ceil(n_aksen / (1 + (n_aksen / N)))
# Cetak ukuran sampel untuk setiap variasi selang kepercayaan
print("Ukuran sampel untuk setiap variasi selang kepercayaan")
print("+--------------------+---------------+")
print("| Selang kepercayaan | Jumlah sampel |")
print("+--------------------+---------------+")
for ci_, n_ in zip(ci, n):
    print("| %17.3f  | %13d |" % (ci_, n_))
print("+--------------------+---------------+")

