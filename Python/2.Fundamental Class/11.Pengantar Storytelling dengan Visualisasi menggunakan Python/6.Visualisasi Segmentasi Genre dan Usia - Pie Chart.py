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

dataset_shopping['Range Usia'] = dataset_shopping.apply (lambda row: label_usia(row), axis=1)

# Kelompokkan dataset berdasarkan 'Genre' dan 'Range Usia' dan dihitung agregasi jumlahnya dan terapkan reset_index()
shopping_group = dataset_shopping.groupby(['Genre', 'Range Usia'])['CustomerID'].count().rename('Jumlah Pelanggan').reset_index()

#Membagi shopping_group ke masing-masing 'Genre'
Male_group = shopping_group[shopping_group['Genre']=='Male']
Female_group = shopping_group[shopping_group['Genre']=='Female']

#Mengimport library Matplotlib
import matplotlib.pyplot as plt

#Buatkan canvas untuk menempatkan pie chart
fig, axs = plt.subplots(1, 2, figsize=(10,5))
   
#Male
axs[0].pie(Male_group['Jumlah Pelanggan'], labels=Male_group['Range Usia'], autopct='%1.1f%%', startangle=90, explode= (0, 0.1, 0, 0))
axs[0].set_title('Persentase Kelompok Usia\nPelanggan Pria')

#Female
axs[1].pie(Female_group['Jumlah Pelanggan'], labels=Female_group['Range Usia'], autopct='%1.1f%%', startangle=90, explode= (0, 0.1, 0, 0))
axs[1].set_title('Persentase Kelompok Usia\nPelanggan Wanita')

plt.tight_layout()
plt.show()