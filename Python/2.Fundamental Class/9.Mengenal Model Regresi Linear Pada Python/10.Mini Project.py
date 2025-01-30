# Import pandas
import pandas as pd
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

# Importlah numpy sebagai np dan stats dari scipy
import numpy as np
from scipy import stats

# Ambillah variabel bebas dan bergantung untuk keterlambatan 4 bulan
# dan ubahlah menjadi numpy 1d narray
x = df["penjualan permen"][:-4].to_numpy()
y = df["tingkat kunjungan ke dokter gigi"][4:].to_numpy()

# Penggunaan numpy.polyfit
print("Penggunaan numpy.polyfit:")
np_out = np.polyfit(x, y, 1)
print("  Persamaan regresi linier: y = %.4e * x + %.4f\n" % (np_out[0], np_out[1]))

# Penggunaan stats.linregress
print("Penggunaan stats.linregress dari scipy:")
sclr_out = stats.linregress(x, y)
print("  Persamaan regresi linier: y = %.4e * x + %.4f\n" % (sclr_out.slope, sclr_out.intercept))

# Gunakan salah satu nilai saja dari np_out atau sclr_out
# untuk koefisien regresi liniernya (gunakan sclr_out)

# Ambillah butir data variabel bebas yang belum digunakan
x_new = df["penjualan permen"][-4:].to_numpy()
#  Gunakan x_new ke dalam persamaan regresi linier
y_pred = sclr_out.slope * x_new + sclr_out.intercept
print("Prediksi tingkat kunjungan ke dokter gigi 1998-01 s/d 1998-04:")
for i, kunjungan in enumerate(y_pred):
    print("1998-0%d: %4d kunjungan." % (i+1, round(kunjungan)))


# Langkah
# mengimpor numpy sebagai aliasnya dan modul stats dari scipy,
# menggunakan kolom penjualan permen sebagai variabel bebas x dan kolom tingkat kunjungan ke dokter gigi sebagai variabel bergantungnya, y,
# menggunakan .polyfit dan memasukkan parameter variabel bebas, variabel bergantung dan pangkat fit polinom untuk kasus regresi ini. Hal demikian juga untuk .linregress. Lihat kembali bahasan numpy.polyfit dan stats.linregress.
# mencetak persamaan regresi linier dengan urutan slope dan intercept melalui salah satu hasil, yaitu hasil fitting dengan stats.linregress,
# menggunakan data variabel bebas yang belum digunakan (data September 1997 s/d Desember 1997) untuk memprediksi tingkat kunjungan ke dokter gigi, tentunya diterapkan ke dalam persamaan linier hasil regresi menggunakan hasil perhitungan slope dan intercept.