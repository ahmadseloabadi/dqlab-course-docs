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

print("Koefisien korelasi Pearson:")
print("---------------------------")
print(df.corr()["tingkat kunjungan ke dokter gigi"])

# Teori
# Koefisien korelasi Pearson (Pearson correlation coefficient) – yang disimbolkan dengan  – digunakan untuk mengukur linieritas dua variabel.
# Koefisien korelasi Pearson ini memiliki nilai   Nilai  menunjukkan linieritas sempurna untuk kemiringan (slope) positif. Sedangkan  menunjukkan linieritas yang sempurna juga tetapi untuk kemiringan (slope) negatif. Sementara itu,  justru tidak menunjukkan hubungan sama sekali.

# data_frame.corr(method="pearson", min_periods=1)

# dengan parameter

# method:string nama metode perhitungan koefisien korelasi dengan pilihan yang dapat digunakan adalah "pearson", "kendall", "spearman" atau callable. Defaultnya adalah "pearson". Callable menghendaki input dua buah 1d ndarray yang menghasilkan output skalar float.

# min_periods:berupa integer dan merupakan nilai minimum observasi yang dibutuhkan untuk pasangan kolom agar menghasilkan harga koefisien korelasi yang valid. Default adalah 1.

# Note
# Method .corr ini juga dapat diterapkan pada pandas series, dengan parameter

# series.corr(other, method="pearson", min_periods=None)

# dengan parameter other adalah pandas series lainnya. Sementara itu dua parameter setelahnya sama dengan method .corr pada data frame. Hasil perhitungan ini adalah output skalar float.