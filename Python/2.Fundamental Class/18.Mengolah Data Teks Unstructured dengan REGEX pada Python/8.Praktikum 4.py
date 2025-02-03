#Import library yang dibutuhkan
import pandas as pd

#Baca file dqlabregex.tsv
dqlabregex = pd.read_csv("https://storage.googleapis.com/dqlab-dataset/dqlabregex.tsv", sep = '\t')

#Sintaks merapikan format tanggal pada kolom tanggal_catat
dqlabregex['tanggal_catat'] = dqlabregex['tanggal_catat'].str.replace('([0-9]{2})-([0-9]{2})-([0-9]{4})','\\2/\\1/\\3')

#Tampilkan hasilnya
print(dqlabregex[['tanggal_catat']])

# Tugas
# Sunyi memperhatikan tabel dqlabregex, pada kolom tanggal_catat ternyata format tanggal pada baris pertama dan kedua berbeda dengan lainnya. Untuk merapikannya, aku memutuskan untuk merubah standarisasi penulisan tanggal DD-MM-YYYY (tanggal - bulan - tahun) menjadi MM/DD/YYYY (bulan / tanggal / tahun) agar seragam. 