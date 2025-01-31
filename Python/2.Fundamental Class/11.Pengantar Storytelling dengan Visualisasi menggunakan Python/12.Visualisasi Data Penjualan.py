#Kode sebelumnya
import pandas as pd

dataset_retail = pd.read_csv('https://storage.googleapis.com/dqlab-dataset/data_retail.csv', delimiter=';')

product_transaction = dataset_retail.groupby('Product').sum().reset_index()

#Mengimpor library matplotlib
import matplotlib.pyplot as plt

#Menampilkan visualisasi dari jumlah transaksi tiap produk
fig = plt.figure(figsize=(10,5))

#Plot diagram batang
ax1 = plt.subplot(121)
ax1.bar(product_transaction['Product'], product_transaction['Average_Transaction_Amount'])
ax1.set_ylabel('Rata-rata jumlah transaksi\n(x 1 Milyar)')
ax1.set_title('Total Transaksi Produk')

#Plot persentase dengan pie chart
ax2 = plt.subplot(122)
ax2.pie(product_transaction['Average_Transaction_Amount'], labels=product_transaction['Product'], autopct='%1.1f%%', startangle=90)
ax2.set_title('Persentase Transaksi Produk')

plt.tight_layout()
plt.show()