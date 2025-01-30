# import library pandas
import pandas as pd
# membaca file transaksi_retail_dqlab_v2.tsv
df = pd.read_csv("https://storage.googleapis.com/dqlab-dataset/transaksi_retail_dqlab_v2.tsv", delimiter="\t")

import datetime
# membuat kolom baru bernama "Bulan" yang bertipe datetime dalam format "%m-%Y"
df['Bulan'] = df['Tanggal'].apply(
	lambda x: datetime.datetime.strptime(x,'%d-%m-%Y').strftime('%m-%Y')
)

# menghitung jumlah item penjualan per produk per bulan
print(df.groupby(['Bulan','Nama Produk'])['Jumlah'].sum())


