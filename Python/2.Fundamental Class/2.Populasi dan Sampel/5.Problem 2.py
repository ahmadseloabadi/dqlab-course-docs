# Import numpy sebagai aliasnya
import numpy as np
# Jumlah anggota populasi
N = 8963 
# Proporsi
p = 0.25
# Selang kepercayaan (confidence interval) ci = 0.95
# dengan z-score sebesar
z =  1.96
# Margin of error
e = np.array([ 0.01, 0.02, 0.05, 0.10, 0.20, 0.25, 0.33, 0.50])
# Perhitungan ukuran sampel, n
n_aksen = z**2 * p * (1 - p) / e**2
n = np.ceil(n_aksen / (1 + (n_aksen / N)))
# Cetak ukuran sampel untuk setiap variasi margin galat
print("Ukuran sampel untuk setiap variasi margin galat")
print("+--------------+---------------+")
print("| Margin galat | Jumlah sampel |")
print("+--------------+---------------+")
for e_, n_ in zip(e, n):
    print("| %12.2f | %13d |" % (e_, n_))
print("+--------------+---------------+")
