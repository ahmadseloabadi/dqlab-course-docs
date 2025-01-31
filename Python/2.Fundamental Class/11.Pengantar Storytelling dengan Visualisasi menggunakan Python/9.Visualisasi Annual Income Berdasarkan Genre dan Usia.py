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

#Mengelompokkan 'Annual Income (k$)' dan 'Spending Score (1-100)' berdasarkan 'Genre' dan 'Range Usia', serta mengambil agregasinya (yaitu nilai rata-rata atau mean) berdasarkan pengelompokan tersebut
group_income = dataset_shopping.groupby(['Genre', 'Range Usia']).mean()[['Annual Income (k$)', 'Spending Score (1-100)']].reset_index()

#Pisahkan ke dalam masing-masing Genre
male_group = group_income[group_income['Genre']=='Male']
female_group = group_income[group_income['Genre']=='Female']

#Import matplotlib
import matplotlib.pyplot as plt
import numpy as np

labels = group_income['Range Usia'].unique()
x = np.arange(len(labels))

fig = plt.figure(figsize=(8,8))
#Plotkan ke dalam grouped bar chart 
ax1 = plt.subplot(211)
width = 0.4
male_bar = ax1.bar(x - width/2, male_group['Annual Income (k$)'], width, label='Pria')
female_bar = ax1.bar(x + width/2, female_group['Annual Income (k$)'], width, label='Wanita')

#menampilkan angka setiap bar
ax1.bar_label(male_bar, padding=3, fmt='%.2f')
ax1.bar_label(female_bar, padding=3, fmt='%.2f')
ax1.set_xlabel('Range Usia')
ax1.set_ylabel('Annual Income (k$)')
ax1.set_title('Pendapatan tahunan berdasarkan kelompok usia pelanggan')
ax1.set_xticks(x)
ax1.set_xticklabels(labels)
ax1.legend()

#Plotkan ke dalam pie chart untuk setiap genre
exploding = [0, 0.1, 0, 0]
ax2 = plt.subplot(223)
ax2.pie(male_group['Annual Income (k$)'], labels=male_group['Range Usia'], explode=exploding, autopct='%1.1f%%', startangle=90)
ax2.set_title('Persentase pendapatan tahunan\npelanggan pria berdasarkan\nkelompok usia')

ax2 = plt.subplot(224)
ax2.pie(female_group['Annual Income (k$)'], labels=female_group['Range Usia'], explode=exploding, autopct='%1.1f%%', startangle=90)
ax2.set_title('Persentase pendapatan tahunan\npelanggan wanita berdasarkan\nkelompok usia')

plt.tight_layout()
plt.show()

# Tugas
# Selanjutnya aku akan memvisualisasikan pendapatan tahunan ('Annual Income (k$)') pelanggan berdasarkan 'Genre' dan 'Range Usia'. Aku akan menggunakan grouped bar chart dan pie chart.