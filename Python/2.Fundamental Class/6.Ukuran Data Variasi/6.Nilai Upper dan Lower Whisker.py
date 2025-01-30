# Import numpy
import numpy as np
# Baca dataset 
tinggi_badan = np.loadtxt("https://storage.googleapis.com/dqlab-dataset/survei_tinggi_badan.txt", skiprows=1)

# Perhitungan Q1, Q2, dan Q3
Q1, Q2, Q3 = np.percentile(tinggi_badan, [25, 50, 75])
# Jarak antar kuartil (inter quartile range, IQR)
IQR = Q3 - Q1
print("Jarak antar kuartil (IQR):", IQR)
print("\nlower whisker:", Q1 - 1.5*IQR)
print("           Q1:", Q1)
print("           Q2:", Q2)
print("           Q3:", Q3)
print("upper whisker:", Q3 + 1.5*IQR)


# Teori
# untuk menentukan nilai upper dan lower whisker  harus menghitung terlebih dahulu jarak antar kuartile (inter-quartile range) IQR yang merupakan beda nilai antara kuartil 3 Q3 dan nilai kuartil 1 Q1.
# Lower whisker dapat aku hitung dengan :Q1 - 1.5*IQR
# upper whisker dihituung dengan :Q3 + 1.5*IQR

# lower dan upper whisker merupakan batas yang menentukan apakah butir data merupakan inlier atau outlier (pencilan).