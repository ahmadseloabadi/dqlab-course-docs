import pandas as pd
raw_data = pd.read_csv("https://storage.googleapis.com/dqlab-dataset/dataset_statistic.csv", sep=';')

# Mengambil data dari baris pertama (indeks 0) hingga baris ke-9 (indeks 9), yaitu sebanyak 10 baris
print(raw_data[:10])
 
# Mengambil data dari baris ke-4 (indeks 3) hingga baris ke-5 (indeks 4)
print(raw_data[3:5])
 
# Mengambil data dari baris ke-2 (indeks 1), baris ke-4 (indeks 3), dan baris ke-11 (indeks 10)
print(raw_data.loc[[1,3,10]])

# Mengambil kolom 'Jenis Kelamin' dan 'Pendapatan' dari baris ke-2 (indeks 1) hingga baris ke-10 (indeks 9)
print(raw_data[['Jenis Kelamin', 'Pendapatan']][1:10])
 
# Mengambil kolom 'Harga' dan 'Tingkat Kepuasan' dari baris ke-2 (indeks 1), baris ke-11 (indeks 10), dan baris ke-16 (indeks 15)
print(raw_data[['Harga', 'Tingkat Kepuasan']].loc[[1,10,15]])