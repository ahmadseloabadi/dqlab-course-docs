import pandas as pd
raw_data = pd.read_csv("https://storage.googleapis.com/dqlab-dataset/dataset_statistic.csv", sep=';')

# cari proporsi tiap Produk
print(raw_data['Produk'].value_counts()/raw_data.shape[0])

# Teori
# Proporsi kategori adalah ukuran sebaran yang paling sederhana dari ukuran sebaran pada data nomisal dan ordinal.  