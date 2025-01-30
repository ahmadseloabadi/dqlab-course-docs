# import library pandas
import pandas as pd
# import library matplotlib
import matplotlib.pyplot as plt
df = pd.read_csv("https://storage.googleapis.com/dqlab-dataset/transaksi_retail_dqlab_v2.tsv", delimiter="\t")

import datetime
# membuat kolom baru bernama "Bulan" yang bertipe datetime dalam format "%m-%Y"
df["Bulan"] = df["Tanggal"].apply(
	lambda x: datetime.datetime.strptime(x, "%d-%m-%Y").strftime("%m-%Y")
)

# mengambil data Mi Goreng Instant saja
produk_mi = df[df['Nama Produk'] == 'Mi Goreng Instant']

# x adalah bulan transaksi
x = ['04-2020','05-2020','06-2020']

# y jumlah item Mi Goreng Instant yang terjual
y = produk_mi.groupby(["Bulan","Nama Produk"])['Jumlah'].sum()

# membuat line chart menggunakan fungsi plot
plt.plot(x,y)
plt.title("Jumlah Penjualan Mi Goreng Instant Per Bulan",pad=10,fontsize=12,color="blue")
plt.xlabel('Bulan',fontsize=11)
plt.ylabel('Jumlah',fontsize=11)
plt.grid(color='gray',linestyle='-',linewidth=0.5)
plt.tight_layout()
plt.show()
