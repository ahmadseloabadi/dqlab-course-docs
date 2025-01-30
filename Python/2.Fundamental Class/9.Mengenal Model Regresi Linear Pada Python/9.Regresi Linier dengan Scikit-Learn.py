# Import pandas 
import pandas as pd
import numpy as np
# Baca kedua dataset
df_kunjungan = pd.read_csv("https://storage.googleapis.com/dqlab-dataset/kunjungan_dokter_gigi_kota_x_dqlab.tsv", sep="\t")
df_penjualan = pd.read_csv("https://storage.googleapis.com/dqlab-dataset/tingkat_penjualan_kota_x_dqlab.tsv", sep="\t")
# Gabungkan kolom Tahun dan Bulan menjadi kolom Periode dengan isi tiap barisnya memiliki format YYYY-MM 
str_bulan = lambda x: "0"+str(x) if x<10 else str(x)
df_kunjungan["Periode"] = df_kunjungan["Tahun"].map(str) + "-" + df_kunjungan["Bulan"].map(str_bulan)
df_penjualan["Periode"] = df_penjualan["Tahun"].map(str) + "-" + df_penjualan["Bulan"].map(str_bulan)
# Drop kolom Tahun, Bulan dari df_kunjungan
df_kunjungan.drop(columns=["Tahun", "Bulan"], inplace=True)
# Drop kolom Tahun, Bulan dan No dari df_penjualan
df_penjualan.drop(columns=["Tahun", "Bulan", "No"], inplace=True)
# Set index kolom Periode
df_kunjungan.set_index("Periode", inplace=True)
df_penjualan.set_index("Periode", inplace=True)
# Gabungkan kedua dataframe dengan Periode yang telah menjadi key column nya
df = df_kunjungan.join(df_penjualan)

# Importlah LinearRegression dari sklearn.linear_model
from sklearn.linear_model import LinearRegression

# Ambillah variabel bebas dan bergantung untuk keterlambatan 4 bulan
# dan ubahlah menjadi numpy 2d narray melalui .reshape((-1,1))
x = df["penjualan permen"][:-4].to_numpy().reshape((-1,1))
y = df["tingkat kunjungan ke dokter gigi"][4:].to_numpy().reshape((-1,1))

# Instansiasi LinearRegression ke dalam lr
lr = LinearRegression()
# Terapkan method fit pada variabel bebas dan bergantung
lr.fit(x,y)

# Ambillah butir data variabel bebas yang belum digunakan
# dan ubahlah menjadi numpy 2d narray melalui .reshape((-1,1))
x_new = df["penjualan permen"][-4:].to_numpy().reshape((-1,1))
# Prediksilah x_new dengan method predict
y_pred = lr.predict(x_new)

print("Persamaan regresi linier: y = %.4e * x + %.4f\n" % (lr.coef_, lr.intercept_))
print("Prediksi tingkat kunjungan ke dokter gigi 1998-01 s/d 1998-04:")
for i, kunjungan in enumerate(y_pred):
    print("1998-0%d: %4d kunjungan." % (i+1, round(kunjungan[0])))

# Teori
# sklearn.linear_model.LinearRegression(*, fit_intercept=True, copy_X=True, n_jobs=None, positive=False)
# fit_intercept:True (default) jika intercept perlu dihitung

# normalize:False (default), True untuk menormalisasi X. 

# copy_X: True (default) untuk mengkopi X.

# n_jobs:None (default) atau suatu int untuk menset jumlah prosesor yang digunakan dalam komputasi. -1 untuk penggunaan seluruh prosesor.

# positive:False (default), True untuk memaksa seluruh koefisien atau X.

# Kelas ini dapat diinstansiasi ke dalam suatu variabel misal lr. Kemudian, proses komputasi dilakukan dengan menerapkan method .fit, yaitu lr.fit(X, y), dengan X adalah variabel bebas dan y merupakan variabel bergantung. X dinyatakan dalam 2d ndarray berukuran (n, m), dengan m adalah jumlah variabel bebas, untuk kasus ini adalah 1. Sementara itu, y dinyatakan juga dalam dalam 2d ndarray berukuran (n, k), dengan k adalah jumlah variabel bergantung, untuk kasus yang juga bernilai 1.

# Koefisien regresi linier merupakan atribut lr yang dapat diakses untuk m sebagai lr.coeff_ dan b diakses dari lr.intercept_. Akhirnya, untuk memprediksi variabel bergantung yang belum diketahui nilainya dapat ditentukan melalui method .predict pada lr, yaitu lr.predict(X). X merupakan variabel bebas baru dinyatakan dalam 2d ndarray berukuran (n, m).