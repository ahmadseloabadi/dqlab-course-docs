#Kode sebelumnya
import pandas as pd
import numpy as np

dataset_transaksi = pd.read_csv('https://storage.googleapis.com/dqlab-dataset/transaksi_dqlab_retail.tsv', sep='\t')
dataset_transaksi['Flag'] = 1

basket = dataset_transaksi.groupby(['Kode Transaksi','Nama Barang'])['Flag'].sum().unstack().reset_index().fillna(0).set_index('Kode Transaksi')

#Membuat function untuk menormalisasi data
def encode_units(x):
	if x <= 0 :
		return 0
	if x > 0:
		return 1

#Menerapkan fungsi encode_units pada dataset	
basket_encode = basket.applymap(encode_units)

#Menampilkan basket_encode
print(basket_encode)


# Toeri
# Karena tujuan memberikan “Flag” adalah hanya untuk mengetahui barang apa yang terdapat dalam satu keranjang, maka perlu melakukan normalisasi pada data.

# Caranya dengan menandai bahwa barang yang ada di keranjang nilainya adalah 1, sedangkan barang yang tidak ada dalam keranjang nilainya 0

# Kemudian function tersebut diterapkan pada dataset. Sambil menyesap kopi, aku membuat dataset baru bernama basket_encode untuk membedakan dengan dataset sebelumnya. 