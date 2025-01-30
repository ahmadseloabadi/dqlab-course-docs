# import pandas sebagai aliasnya pd
import pandas as pd

# Baca dataset kunjungan_dokter_gigi_kota_x_dqlab.tsv sesuai dengan url yang diberikan
df_kunjungan = pd.read_csv("https://storage.googleapis.com/dqlab-dataset/kunjungan_dokter_gigi_kota_x_dqlab.tsv", sep='\t')
# Cetak ukuran dataset sehingga diketahui jumlah baris dan kolomnya
print("Ukuran df_kunjungan:", df_kunjungan.shape)
# Cetak data frame df_kunjungan
print(df_kunjungan)

# Baca dataset tingkat_penjualan_kota_x_dqlab.tsv sesuai dengan url yang diberikan
df_penjualan = pd.read_csv("https://storage.googleapis.com/dqlab-dataset/tingkat_penjualan_kota_x_dqlab.tsv", sep='\t')
# Cetak ukuran dataset sehingga diketahui jumlah baris dan kolomnya
print("\n\nUkuran df_penjualan:", df_penjualan.shape)
# Cetak data frame df_penjualan
print(df_penjualan)