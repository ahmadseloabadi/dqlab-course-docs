#Kode sebelumnya
import pandas as pd
import numpy as np

dataset_transaksi = pd.read_csv('https://storage.googleapis.com/dqlab-dataset/transaksi_dqlab_retail.tsv', sep='\t')
dataset_transaksi['Flag'] = 1

#Melakukan pengelompokkan Flag berdasarkan kolom Kode Transaksi dan Nama Barang
basket = dataset_transaksi.groupby(["Kode Transaksi",'Nama Barang'])['Flag'].sum().unstack().reset_index().fillna(0).set_index("Kode Transaksi")

#Menampilkan basket
print(basket)

# Teori
# Kemudian, aku mengelompokkan “Flag” berdasarkan kolom “Kode Transaksi” dan “Nama Barang” menggunakan function groupby() yang kemudian diikuti dengan fungsi-fungsi berikut secara berantai (chaining method)

# sum():Untuk menjumlahkan/menambahkan nilai

# unstack():Melakukan perubahan bentuk data frame dengan menyebarkan data dan membentuknya kembali menjadi kerangka data yang lebih pendek tetapi lebih luas (memperpendek baris tapi memanjangkan kolom)

# reset_index():Melakukan reset index pada data frame.Ini perlu dilakukan karena bentuk data frame berubah.

# fillna(): Mengisi cell yang kosong dengan nilai 0 agar tidak ada nilai null.

# set_index() : Menentukan index untuk data frame.


# Penjelasan
# Setelah mengelompokkan data dengan cara di atas, aku dapat mengetahui barang apa saja yang dibeli secara bersamaan (dalam satu keranjang) dan kuantitas (jumlah) masing - masing barang.

# Maka, jika terdapat barang yang sama dibeli lebih dari satu dalam satu keranjang, nilai (kuantiti) lebih dari satu. Contohnya, jika seorang pembeli membeli 2 kuas make up, maka nilainya adalah 2.