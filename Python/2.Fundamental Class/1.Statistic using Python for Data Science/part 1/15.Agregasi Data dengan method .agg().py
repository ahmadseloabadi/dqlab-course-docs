import numpy as np
import pandas as pd
raw_data = pd.read_csv("https://storage.googleapis.com/dqlab-dataset/dataset_statistic.csv", sep=';')

# menghitung rerata dan median 'Pendapatan' dan 'Harga'
print(raw_data[['Pendapatan','Harga']].agg([np.mean,np.median]))
 
# menghitung rerata dan median Pendapatan dan Harga dari tiap produk
print(raw_data[['Pendapatan','Harga','Produk']].groupby('Produk').agg([np.mean,np.median]))