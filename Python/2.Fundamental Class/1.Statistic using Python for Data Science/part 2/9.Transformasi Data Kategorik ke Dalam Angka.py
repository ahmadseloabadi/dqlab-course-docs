import pandas as pd
raw_data = pd.read_csv("https://storage.googleapis.com/dqlab-dataset/dataset_statistic.csv", sep=';')

print(raw_data['Produk'])

data_dummy_produk = pd.get_dummies(raw_data['Produk'])

print(data_dummy_produk)

# Teori
# Untuk data yang bernilai kategorik agar bisa diolah oleh program harus berupa data berbentuk angka. Hal ini akan menjadi masalah tersendiri jika data yang diterima memiliki banyak sekali data yang bernilai karakter atau string. Untuk menanggulangi hal ini kita bisa menggunakan dummy encoding.

# Dummy encoding atau disebut juga sebagai one-hot encoding adalah suatu metode transformasi yang dapat mengubah data bertipe karakter menjadi angka bernilai 1 dan 0 yang menandakan ada atau ketiadaan nilai tersebut pada baris data. Untuk melakukan dummy encoding pada data kita cukup menggunakan method .get_dummies() dari pandas