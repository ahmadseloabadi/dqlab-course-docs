#Mengimpor library pandas & numpy
import pandas as pd
import numpy as np

#Membaca file
dataset_transaksi = pd.read_csv('https://storage.googleapis.com/dqlab-dataset/transaksi_dqlab_retail.tsv', sep='\t')

#Menampilkan isi data
print(dataset_transaksi)

# penjelasan
# Hasil Output tersebut menampilkan 5 baris pertama dan 5 baris terakhir dari data transaksi retail. Selain itu, terdapat total 33.668 baris data transaksi dengan masing - masing memiliki Kode Transaksi dan Nama Barang.

