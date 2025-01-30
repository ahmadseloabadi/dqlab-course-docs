# Import pandas sebagai aliasnya yaitu pd
import pandas as pd

# Baca dataset
tinggi_badan = pd.read_csv("https://storage.googleapis.com/dqlab-dataset/survei_tinggi_badan.txt")
# Cetak type(tinggi_badan) dan data frame tinggi_badan sendiri
print("type(tinggi_badan):", type(tinggi_badan))
print(tinggi_badan)

# Hitung statistik deskriptif tinggi_badan
statistik_deskriptif = tinggi_badan.describe()
# Cetak statistik deskriptif tinggi_badan
print("\nStatistik deskriptif:\n", statistik_deskriptif)

# Tentukan IQR
Q1 = statistik_deskriptif["tinggi badan (cm)"]["25%"]
Q3 = statistik_deskriptif["tinggi badan (cm)"]["75%"]
IQR = Q3 - Q1
#Cetak IQR
print("\nIQR:", IQR)

# Persentil ke-5 dan ke-95
percentile = tinggi_badan.quantile(q=[0.05, 0.95])
print("\nPersentil ke-5 dan ke-95:\n", percentile)

# Tugas 

# mengimport pandas sebagai aliasnya pd
# membaca dataset melalui url ("https://storage.googleapis.com/dqlab-dataset/survei_tinggi_badan.txt") dengan menggunakan pandas.read_csv yang kemudian ditampung oleh variabel tinggi_badan.
# mencek tipe data tinggi_badan apakah bertipe pandas.DataFrame atau bukan.
# mencetak 5 data teratas dengan method .head() dan 5 data terbawah dengan method .tail() pada data frame tinggi_badan.
# menentukan statistik deskriptif data frame tinggi_badan menggunakan method .describe() yang ditampung ke dalam variabel statistik_deskriptif, dan kemudian cetaklah statistik_deskriptif ini untuk mengetahui hasilnya.
# menentukan kuartil Q1 dan Q3 dapat dilakukan berdasarkan hasil pada variabel statistik_deskriptif ini dengan mengakses kolom "tinggi_badan (cm)" dan kemudian akses kembali kolom yang menunjukkan hasil penghitungan kuartil.
# menghitung IQR seperti yang pernah ku kerjakan sebelumnya dan mencetak hasilnya.
# menghitung persentil pada data frame tinggi_badan untuk kolom "tinggi_badan (cm)" menggunakan method .quantile dengan hanya memasukkan parameter q seperti yang telah ku kerjakan padanumpy.quantile()