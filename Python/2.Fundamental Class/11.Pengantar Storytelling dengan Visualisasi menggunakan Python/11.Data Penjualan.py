#Mengimpor library pandas
import pandas as pd
pd.set_option('display.max_columns', 10)

#Menyimpan data ke dalam dataframe
dataset_retail = pd.read_csv('https://storage.googleapis.com/dqlab-dataset/data_retail.csv', delimiter=';')
print('Lima data teratas dataset_retail:')
print('--------------------------------:')
print(dataset_retail.head())

#Mencari total jumlah penjualan dari setiap produk
product_transaction = dataset_retail.groupby('Product').sum().reset_index()
print('\nTotal penjualan untuk setiap produk:')
print('-----------------------------------:')
print(product_transaction)
