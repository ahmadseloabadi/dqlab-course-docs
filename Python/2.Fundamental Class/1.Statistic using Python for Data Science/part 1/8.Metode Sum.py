import pandas as pd
raw_data = pd.read_csv("https://storage.googleapis.com/dqlab-dataset/dataset_statistic.csv", sep=';')

# menghitung jumlah dari semua kolom
print (raw_data.sum())
 
# menghitung jumlah dari semua kolom bertipe data numerik saja
raw_data.sum(numeric_only=True)
 
# menghitung jumlah dari kolom 'Harga' dan 'Pendapatan'
raw_data[['Harga', 'Pendapatan']].sum()