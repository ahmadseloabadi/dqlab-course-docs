import pandas as pd
raw_data = pd.read_csv("https://storage.googleapis.com/dqlab-dataset/dataset_statistic.csv", sep=';')

print (raw_data.describe())

# Mencari nilai maksimum dari tiap kolom
raw_data.max()
 
# Mencari nilai maksimum dari kolom 'Harga'
raw_data['Harga'].max()
 
# Mencari nilai minimum dari kolom 'Harga'
raw_data['Harga'].min()