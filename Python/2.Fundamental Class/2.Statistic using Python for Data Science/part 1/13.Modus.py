import pandas as pd
raw_data = pd.read_csv("https://storage.googleapis.com/dqlab-dataset/dataset_statistic.csv", sep=';')

# Melihat jumlah dari masing-masing produk
print (raw_data['Produk'].value_counts())

# Teori
# Modus didefinisikan sebagai data yang memiliki frekuensi kemunculan terbanyak/terbesar. Sebagai contoh, jika terdapat titik data seperti berikut: 1, 1, 1, 1, 2, 3, 3, 4 maka modus dari data tersebut adalah 1 karena 1 muncul sebanyak 4 kali, lebih banyak dibanding titik data lainnya.

# Kita dapat menggunakan method .value_counts() pada pandas 