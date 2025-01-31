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
group_income = dataset_shopping.groupby(['Genre', 'Range Usia']).mean()[['Annual Income (k$)', 'Spending Score (1-100)']]
print(group_income)

# Tugas
# Setelah diperlihatkan ke tim sales, aku diminta untuk menampilkan persentase pendapatan tahunan ('Annual Income (k$)')  dan tingkat pengeluaran ('Spending Score (1-100)') pelanggan berdasarkan 'Genre' dan 'Range Usia'.