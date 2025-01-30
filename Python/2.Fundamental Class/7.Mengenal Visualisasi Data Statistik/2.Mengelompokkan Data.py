# import library pandas
import pandas as pd
# membaca file transaksi_retail_dqlab_v2.tsv
df = pd.read_csv("https://storage.googleapis.com/dqlab-dataset/transaksi_retail_dqlab_v2.tsv", delimiter="\t")

# menghitung total jumlah barang yang dibeli berdasarkan produk
print(df['Jumlah'].groupby(df['Nama Produk']).sum())