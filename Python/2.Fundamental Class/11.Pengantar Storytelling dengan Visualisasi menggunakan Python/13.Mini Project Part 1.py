#Import library pandas
import pandas as pd
pd.set_option('display.max_column', 10)

#Membaca dan menampilkan dataset
dataset_worldbank = pd.read_csv('https://storage.googleapis.com/dqlab-dataset/atmajaya/worldbank.csv', delimiter=',', encoding='cp1252')

#Melihat tipe data database worldbank.csv
print('\nInformasi dataset_worldbank:')
print('============================')
dataset_worldbank.info()

#Mengganti baris data yang kosong dengan nilai 0
dataset_worldbank = dataset_worldbank.fillna(0)

#Melihat tipe data database worldbank.csv
print('\nInformasi dataset_worldbank setelah .fillna(0):')
print('===============================================')
dataset_worldbank.info()

#Data worldbank dari tahun ... sampai tahun ...
print('\nData worldbank dari tahun ... sampai tahun ...')
print('==============================================')
print(dataset_worldbank['year'].unique())

# Tugas
# Setelah aku menyelesaikan visual data untuk tim marketing dan sales, aku berpikir untuk membantu tim lainnya juga. Salah satunya adalah tim keuangan. Maka itu, aku memutuskan melihat datasetnya dan mulai mengerjakannya dengan worldbank.csv. Dataset memiliki alamat url di: https://storage.googleapis.com/dqlab-dataset/atmajaya/worldbank.csv.
# Sembari menyeruput kopi yang kudapatkan dari traktiran tim marketing dan sales, aku melihat dataset milik tim keuangan untuk mengetahui tipe data yang dipakai dan memastikan tidak adanya null dalam data.

# Langkah
# Ternyata, ada beberapa kolom yang memiliki baris yang kosong (null). Supaya tidak ada data yang kosong, baris data yang null atau kosong diisi dengan nilai 0. Sekarang seharusnya semua data sudah tidak ada yang kosong. 

# Aku juga melihat ada kolom tahun 'year', aku ingin mengetahui dataset ini dari tahun berapa hingga ke berapa dengan menggunakan .unique().