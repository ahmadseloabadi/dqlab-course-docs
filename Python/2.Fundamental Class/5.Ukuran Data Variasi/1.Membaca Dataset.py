# Import numpy sebagai aliasnya np
import numpy as np

# Baca dataset 
tinggi_badan = np.loadtxt("https://storage.googleapis.com/dqlab-dataset/survei_tinggi_badan.txt", skiprows=1)

# Cetak ukuran dataset dan isinya
print("Ukuran data tinggi_badan:", tinggi_badan.shape)
print("Data tinggi_badan (cm):\n", tinggi_badan)

# penjelasan
# Untuk data teks ini aku dapat membacanya dengan menggunakan method .loadtxt() dari numpy. Melalui .loadtxt() dapat digunakan parameter nama file yaitu string "https://storage.googleapis.com/dqlab-dataset/survei_tinggi_badan.txt", dan baris pertama harus dilewati (skip) dengan menggunakan parameter skiprows=1. Hasil pembacaan data teks ini akan ditempatkan ke dalam variabel tinggi_badan yang bertipe numpy.ndarray.

# Tidak lupa juga aku mengecek ukuran data ini (dengan menggunakan atribut .shape) dan juga mencetak isi data.