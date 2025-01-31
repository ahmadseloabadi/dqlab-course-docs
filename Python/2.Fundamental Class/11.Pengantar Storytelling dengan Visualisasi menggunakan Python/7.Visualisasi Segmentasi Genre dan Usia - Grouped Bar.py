#Kode sebelumnya
import pandas as pd

dataset_shopping = pd.read_csv('https://storage.googleapis.com/dqlab-dataset/shopping_data.csv', delimiter=',')

def label_usia(row):
    if row['Age'] < 21:
        return 'remaja'
    if row['Age'] < 40:
        return 'dewasa muda'
    if row['Age'] < 55:
        return 'dewasa'
    return 'pensiun'

dataset_shopping['Range Usia'] = dataset_shopping.apply(lambda row: label_usia(row), axis=1)

# Kelompokkan dataset berdasarkan 'Genre' dan 'Range Usia' dan dihitung agregasi jumlahnya dan terapkan reset_index()
shopping_group = dataset_shopping.groupby(['Genre', 'Range Usia'])['CustomerID'].count().rename('Jumlah Pelanggan').reset_index()

#Membagi shopping_group ke masing-masing 'Genre'
Male_group = shopping_group[shopping_group['Genre']=='Male']
Female_group = shopping_group[shopping_group['Genre']=='Female']

#Mengimport library Matplotlib
import matplotlib.pyplot as plt

#Menggabungkan tampilan jumlah kelompok usia Male dan Female dengan grouped bar
import numpy as np

labels = shopping_group['Range Usia'].unique()
x = np.arange(len(labels))
width = 0.4 #lebar bar
 
fig, ax = plt.subplots()
Male_bar = ax.bar(x - width/2, Male_group['Jumlah Pelanggan'], width, label = 'Pria')
Female_bar = ax.bar(x + width/2, Female_group['Jumlah Pelanggan'], width, label = 'Wanita')

#menampilkan angka setiap bar
ax.bar_label(Male_bar, padding=3)
ax.bar_label(Female_bar, padding=3)

ax.set_ylabel('Usia')
ax.set_title('Kelompok Usia Pelanggan')
ax.set_xticks(x)
ax.set_xticklabels(labels)
ax.legend()

plt.tight_layout()
plt.show()