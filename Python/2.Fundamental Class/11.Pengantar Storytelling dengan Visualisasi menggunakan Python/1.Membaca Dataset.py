#Mengimport library Pandas 
import pandas as pd

#Membaca dan menampilkan dataset
dataset_shopping = pd.read_csv('https://storage.googleapis.com/dqlab-dataset/shopping_data.csv', delimiter=',')
print('Menampilkan dataset untuk 5 baris teratas:')
print('------------------------------------------')
print(dataset_shopping.head())

#Melihat tipe data
print('\nMelihat tipe data:')
print('------------------')
dataset_shopping.info()

#Menentukan statistik deskriptif dataset
print('\nStatistik deskriptif:')
print('---------------------')
print(dataset_shopping.describe())