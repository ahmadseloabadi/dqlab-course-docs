#Mengimpor library pandas
import pandas as pd
pd.set_option('display.max_column', 20)

#Membaca file
dataset_retail = pd.read_csv('https://storage.googleapis.com/dqlab-dataset/data_retail.csv', delimiter=';')

#Mengimpor library datetime
import datetime

#Mengubah kolom first_Transaction dan Last_Transaction ke bentuk Datetime
dataset_retail['First_Transaction']= pd.to_datetime(pd.to_datetime(dataset_retail['First_Transaction']/1000, unit='s', origin='1970-01-01')).dt.date
dataset_retail['Last_Transaction']= pd.to_datetime(pd.to_datetime(dataset_retail['Last_Transaction']/1000, unit='s', origin='1970-01-01')).dt.date

dataset_retail.sort_values('First_Transaction', inplace=True)

#Menampilkan isi data
print(dataset_retail)

# Tugas
# Pada dataset tersebut, terdapat kolom yang menandakan waktu, yaitu First_Transaction dan Last_Transaction. Tetapi, anehnya kedua kolom tersebut tidak ditampilkan dalam format tanggal yang umum, seperti (dd/mm/yyyy).
