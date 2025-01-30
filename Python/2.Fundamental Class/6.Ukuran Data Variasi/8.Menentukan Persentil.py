# Import numpy
import numpy as np
# Baca dataset 
tinggi_badan = np.loadtxt("https://storage.googleapis.com/dqlab-dataset/survei_tinggi_badan.txt", skiprows=1)

# Persentil ke-5 dan ke-95
print("Menggunakan np.percentile")
P5, P95 = np.percentile(tinggi_badan, [5, 95])
print("  Persentil ke-5  (P5) :", P5)
print("  Persentil ke-95 (P95):", P95)

print("\nMenggunakan np.quantile")
P5, P95 = np.quantile(tinggi_badan, [0.05, 0.95])
print("  Persentil ke-5  (P5) :", P5)
print("  Persentil ke-95 (P95):", P95)

# 