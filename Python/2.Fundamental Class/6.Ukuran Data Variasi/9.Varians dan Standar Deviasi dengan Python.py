# Import numpy
import numpy as np
# Baca dataset 
tinggi_badan = np.loadtxt("https://storage.googleapis.com/dqlab-dataset/survei_tinggi_badan.txt", skiprows=1)

def py_rata_rata(data):
    return sum(data) / len(data)

def py_varians(data, k=1):
    rerata, var = py_rata_rata(data), 0
    for d in data:
        var += (d - rerata) ** 2
    return var / (len(data) - k)

def py_standar_deviasi(data, k=1):
    return py_varians(data, k=k) ** 0.5

print("Menggunakan user-defined function pada array tinggi_badan")
print("  unbiased varians        :", py_varians(tinggi_badan))
print("  biased varians          :", py_varians(tinggi_badan, k=0))
print("  unbiased standar deviasi:", py_standar_deviasi(tinggi_badan))
print("  biased standar deviasi  :", py_standar_deviasi(tinggi_badan, k=0))

print("\nMenggunakan method .var() dan .std() pada array tinggi_badan")
print("  unbiased varians        :", tinggi_badan.var(ddof=1))
print("  biased varians          :", tinggi_badan.var())
print("  unbiased standar deviasi:", tinggi_badan.std(ddof=1))
print("  biased standar deviasi  :", tinggi_badan.std())


# Teori
# numpy.var() dan numpy.std(). Kedua method ini memiliki parameter yang sama. Untuk itu, aku akan lihat numpy.var() saja saat ini. 

# numpy.var(a, axis=None, dtype=None, out=None, ddof=0, keepdims=, *, where=)

# Parameter yang umum diset, yaitu :

# a:array (numpy.ndarray) atau list yang akan dihitung variansnya

# axis:Untuk array 2D atau lebih ini berguna bahwa terhadap baris atau kolom kah persentil akan dihitung. axis ini dapat menerima None, int, atau tuple of int. None adalah nilai default-nya yang akan menentukan persentil untuk array a yang telah diubah menjadi array 1D.

# dtype:tipe data untuk mengkomputasi varians. Jika a adalah array integer makan akan otomatis dikonversi ke numpy.float64, tetapi jika array a sudah float maka tidak akan dikonversi.

# out:nama alternatif untuk output array untuk menampung hasil.

# ddof:Berupa bilangan bulat yang merupakan delta derajat kebebasan atau faktor koreksi. Nilai default-nya adalah 0 yaitu untuk perhitungan biased variance. Kita dapat mengentrikan nilainya sebesar 1 untuk perhitungan unbiased variance.

# keepdims:ketika di set True maka akan mempertahankan dimensi array a. Default adalah True.

# where:elemen-elemen array yang akan dilibatkan dalam perhitungan varians

