#Mengimpor library pandas
import pandas as pd
pd.set_option('display.max_column', 20)

#Membaca file
dataset_retail = pd.read_csv('https://storage.googleapis.com/dqlab-dataset/data_retail.csv', delimiter=';')

#Menampilkan isi data
print(dataset_retail)