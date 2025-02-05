#Mengimpor library pandas
import pandas as pd

#Membaca file
dataset_retail = pd.read_csv('https://storage.googleapis.com/dqlab-dataset/data_retail.csv', delimiter=';')

#Melihat detail tipe data
dataset_retail.info()