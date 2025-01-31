#Kode sebelumnya
import pandas as pd

dataset_shopping = pd.read_csv('https://storage.googleapis.com/dqlab-dataset/shopping_data.csv', delimiter=',')

##Menghitung jumlah pelanggan berdasarkan Genre
#Mencari pembeli dengan jenis kelamin pria
Male_dataset = dataset_shopping[(dataset_shopping['Genre'] == "Male")].reset_index()
jumlah_pria = Male_dataset['Genre'].count()
print('Jumlah Pelanggan Pria =',jumlah_pria)

#Mencari data yang sama pada pembeli dengan jenis kelamin wanita
Female_dataset = dataset_shopping[(dataset_shopping['Genre'] == "Female")].reset_index()
jumlah_wanita = Female_dataset['Genre'].count()
print('Jumlah Pelanggan Wanita =',jumlah_wanita)

# Tugas
# Oh dataset ini tentang data pelanggan Senja, jadi isinya ini menjelaskan mengenai demografi mereka, dimana pada CustomerID menjelaskan index customer, Genre merupakan gender pelanggan, Age merupakan usia pelanggan, Annual Income (k$) merupakan pendapatan pertahun dan Spending Score (1-100) merupakan tingkat pengeluaran di dalam perusahaan.” ucap Sunyi menjelaskan yang terdapat dalam dataset.

# Setelah mendengarkan penjelasan Sunyi, aku pun sudah memahami isi dari dataset tersebut. Kemudian, aku pun  kembali membaca permintaan dari tim sales. Pertama, tim ingin mengetahui segmentasi pelanggan berdasarkan gender mereka. Maka, aku mulai  menghitung jumlah pelanggan Pria (Male) dan Wanita (Female)