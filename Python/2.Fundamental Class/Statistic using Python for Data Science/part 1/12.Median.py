import numpy as np
import pandas as pd
raw_data = pd.read_csv("https://storage.googleapis.com/dqlab-dataset/dataset_statistic.csv", sep=';')
produk_A = raw_data[raw_data['Produk'] == 'A']

print (raw_data)
# Hitung median dari pendapatan menggunakan pandas
print (produk_A['Pendapatan'].median())
 
# Hitung median dari pendapatan menggunakan numpy
print (np.median(produk_A['Pendapatan']))