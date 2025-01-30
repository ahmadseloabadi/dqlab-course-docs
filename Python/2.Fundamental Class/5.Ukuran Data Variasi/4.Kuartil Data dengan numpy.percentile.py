# Import numpy
import numpy as np
# Baca dataset 
tinggi_badan = np.loadtxt("https://storage.googleapis.com/dqlab-dataset/survei_tinggi_badan.txt", skiprows=1)

# Perhitungan Q1, Q2, dan Q3 satu persatu
print("Perhitungan Q1, Q2, dan Q3 satu persatu")
Q1 = np.percentile(tinggi_badan, 25)
Q2 = np.percentile(tinggi_badan, 50)
Q3 = np.percentile(tinggi_badan, 75)
print("Kuartil 1 (Q1):", Q1)
print("Kuartil 2 (Q2):", Q2)
print("Kuartil 3 (Q3):", Q3)

# Perhitungan Q1, Q2, dan Q3 sekaligus
print("\nPerhitungan Q1, Q2, dan Q3 sekaligus")
Q123 = np.percentile(tinggi_badan, [25, 50, 75])
print("[Q1, Q2, Q3]:", Q123)

# numpy.percentile(a, q, axis=None, out=None, overwrite_input=False, interpolation="linear", keepdims=False)

# dengan parameter

# a:array (numpy.ndarray) atau list yang akan dihitung persentilnya

# q:persentil ke- yang harus dinyatakan dalam rentang bilangan ril antara 0 dan 100. q ini dapat digunakan berupa nilai tunggal atau dapat juga digunakan beberapa nilai persentil ke-nya sekaligus seperti persentil ke-10, 50, dan 90 yang dituliskan dalam python list [10, 50, 90].

# axis:untuk array 2D atau lebih ini berguna bahwa terhadap baris atau kolom kah persentil akan dihitung. axis ini dapat menerima None, int, atau tuple of int. None adalah nilai default-nya yang akan menentukan persentil untuk array a yang telah diubah menjadi array 1D.

# out:nama alternatif untuk output array untuk menampung hasil.

# overwrite_input:default adalah False untuk tidak menimpa array input.

# interpolation:jenis interpolasi yang digunakan jika persentil yang diinginkan berada di antara dua butir data berdekatan. Pilihan yang dapat digunakan adalah "linear", "lower", "higher", "midpoint", "nearest". Nilai default-nya adalah "linear".

# keepdims:ketika diset True maka akan mempertahankan dimensi array a. Default adalah False.

# Penggunaan method .percentile() akan menghasilkan skalar (nilai tunggal) atau list beberapa nilai sesuai dengan nilai q yang diberikan apakah skalar atau list beberapa nilai juga.