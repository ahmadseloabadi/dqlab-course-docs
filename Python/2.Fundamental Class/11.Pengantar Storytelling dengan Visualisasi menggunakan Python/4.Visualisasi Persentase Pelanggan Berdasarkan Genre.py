#Kode sebelumnya
import pandas as pd

dataset_shopping = pd.read_csv('https://storage.googleapis.com/dqlab-dataset/shopping_data.csv', delimiter=',')

#Jumlah pelanggan berdasarkan Genre
jumlah_pelanggan = dataset_shopping.groupby('Genre')['CustomerID'].count().rename('Jumlah pelanggan').reset_index()

#Mengimport library Matplotlib
import matplotlib.pyplot as plt

#Menampilkan pie chart pembagian data Male dan Female
plt.pie(jumlah_pelanggan['Jumlah pelanggan'], labels=jumlah_pelanggan['Genre'], autopct='%1.1f%%', startangle=90)
plt.tight_layout()
plt.show()