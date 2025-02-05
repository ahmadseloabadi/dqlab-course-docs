#Kode sebelumnya
import pandas as pd
import datetime

dataset_retail = pd.read_csv('https://storage.googleapis.com/dqlab-dataset/data_retail.csv', delimiter=';')

dataset_retail['First_Transaction']= pd.to_datetime(pd.to_datetime(dataset_retail['First_Transaction']/1000, unit='s', origin='1970-01-01')).dt.date
dataset_retail['Last_Transaction']= pd.to_datetime(pd.to_datetime(dataset_retail['Last_Transaction']/1000, unit='s', origin='1970-01-01')).dt.date
dataset_retail.sort_values('First_Transaction', inplace=True)

#Kita akan buat agregasi rata-rata jumlah transaksi harian berdasarkan kolom First_Transaction
daily_avg_trx = dataset_retail.groupby('First_Transaction').mean()['Average_Transaction_Amount'].reset_index()

#Mengimport library matplotlib
import matplotlib.pyplot as plt

#Menampilkan nilai rata-rata jumlah transaksi dalam bentuk grafik
plt.plot(daily_avg_trx['First_Transaction'],daily_avg_trx['Average_Transaction_Amount'])
plt.xlabel('Transaksi Pertama')
plt.ylabel('Rata-rata jumlah transaksi')
plt.grid()
plt.show()


# TUgas
# Sebelum aku masuk ke TSA, aku ingin terlebih dahulu memvisualisasikan nilai rata - rata jumlah transaksi (Average_Transaction_Amount) harian dalam bentuk grafik.


# penjelasan
# Dari grafik yang tadi dihasilkan, ada kemungkinan data tidak seimbang (stasioner). Untuk memastikan data stasioner atau tidak, bisa dilakukan uji statistik berikut.

