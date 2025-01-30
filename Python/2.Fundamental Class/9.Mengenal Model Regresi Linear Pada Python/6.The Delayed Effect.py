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


import matplotlib.pyplot as plt
# import stats dari scipy
from scipy import stats

# Spesifikasi keterlambatan hingga 8 bulan
n_delays = 8
# Spesifikasi jumlah kolom untuk subplots
n_plt_cols = 2
fig, axs = plt.subplots(round(n_delays/2), n_plt_cols, figsize=(12, 3.5*round(n_delays/2)), sharey=True)
for i in range(n_delays):
    # Ingat: varibel bebas dan variabel bergantung harus memiliki ukuran yang sama
    # Ambilah variabel bebas: penjualan permen
    x = df["penjualan permen"][:-(i+1)]
    # Ambilah variabel bergantung: tingkat kunjungan ke dokter gigi dan implementasikan keterlambatan
    y = df["tingkat kunjungan ke dokter gigi"][i+1:]
    # Hitung koefisien korelasi Pearson
    pearson_r, p_value = stats.pearsonr(x, y)
    # Buat title setiap subplots dan juga tambatkan nilai  
    # koefisien korelasi Pearson yang telah dihitung
    title = "Efek keterlambatan %d bulan (r = %.2f)" % (i+1, pearson_r)
    
    # Buat scatter plot
    ax = axs[i // n_plt_cols][i % n_plt_cols]
    ax.scatter(x, y, c="darkcyan")
    ax.set_title(title, fontsize=14, color="maroon")
    if i % n_plt_cols == 0:
        ax.set_ylabel("tingkat kunjungan ke dokter gigi", fontsize=12)
    ax.set_xlabel("penjualan permen", fontsize=12)
    ax.set_xlim([120000, 480000])
    ax.grid()

plt.tight_layout()
plt.show()


# Tugas
# Setelah aku berhasil menghubungkan permasalahannya, aku langsung menentukan lama pengaruh penjualan permen dengan kunjungan ke dokter gigi
# Untuk mewujudkan hal itu, aku mencari relasi tersebut dengan memasangkan butir data pertama penjualan permen pada bulan Januari 1996 dengan butir data kedua tingkat kunjungan ke dokter gigi (bulan Februari 1996). Pemasangan ini disebut dengan efek keterlambatan (delayed effect) selama 1 bulan. Hal ini akan aku lakukan hingga bulan September 1996 pada tingkat kunjungan ke dokter gigi untuk mengetahui efek keterlambatan yang lebih lama yaitu 8 bulan.
# Dengan demikian, visualisasi yang aku buat akan memiliki sumbu horizontal penjualan permen dan tingkat kunjungan ke dokter gigi sebagai sumbu vertikal. Tidak lupa juga, nilai koefisien korelasi Pearson ditampilkan melalui visualisasi ini.

# Teori
# Aku juga dapat menggunakan method stats.pearsonr dari scipy untuk perhitungan koefisien korelasi Pearson akibat adanya efek keterlambatan ini.

# scipy.stats.pearsonr(x, y)

# dengan parameter

# x, y: 1d numpy ndarray untuk masing-masing variabel yang akan ditentukan koefisien korelasi Pearsonnya.

# Method ini akan mengembalikan dua output, yaitu koefisien korelasi Pearson dan p-value.