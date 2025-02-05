#Kode sebelumnya
import pandas as pd
import numpy as np

dataset_transaksi = pd.read_csv('https://storage.googleapis.com/dqlab-dataset/transaksi_dqlab_retail.tsv', sep='\t')

#Flag digunakan untuk menandakan barang/item terdapat pada basket.
dataset_transaksi['Flag'] = 1

#Menampilkan isi data
print(dataset_transaksi)