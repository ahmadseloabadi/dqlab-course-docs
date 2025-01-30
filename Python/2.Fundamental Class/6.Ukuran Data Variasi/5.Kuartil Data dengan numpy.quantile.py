# Import numpy
import numpy as np
# Baca dataset 
tinggi_badan = np.loadtxt("https://storage.googleapis.com/dqlab-dataset/survei_tinggi_badan.txt", skiprows=1)

# Perhitungan Q1, Q2, dan Q3 satu persatu
print("Perhitungan Q1, Q2, dan Q3 satu persatu")
Q1 = np.quantile(tinggi_badan, 0.25)
Q2 = np.quantile(tinggi_badan, 0.5)
Q3 = np.quantile(tinggi_badan, 0.75)
print("Kuartil 1 (Q1):", Q1)
print("Kuartil 2 (Q2):", Q2)
print("Kuartil 3 (Q3):", Q3)

# Perhitungan Q1, Q2, dan Q3 sekaligus
print("\nPerhitungan Q1, Q2, dan Q3 sekaligus")
Q123 = np.quantile(tinggi_badan, [0.25, 0.5,  0.75])
print("[Q1, Q2, Q3]:", Q123)

# numpy.quantile(a, q, axis=None, out=None, overwrite_input=False, interpolation="linear", keepdims=False)
# Wah ini sama nih parameternya (dan keterangannya juga) dengan .percentile() hanya saja yang menjadi sorotan ku sekarang adalah parameter q-nya yang harus dinyatakan dalam bilangan ril antara 0 dan 1. Artinya, ketika aku mau menentukan kuartil 1, maka aku akan mengisikan parameter q dengan 0.25.