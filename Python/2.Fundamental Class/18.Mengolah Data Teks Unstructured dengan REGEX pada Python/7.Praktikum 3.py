#Import library yang dibutuhkan
import pandas as pd

#Baca file dqlabregex.tsv
dqlabregex = pd.read_csv("https://storage.googleapis.com/dqlab-dataset/dqlabregex.tsv", sep = '\t')

#Sintaks menghapus karakter non-numerik pada kolom jumlah_member
dqlabregex['jumlah_member'] = dqlabregex['jumlah_member'].str.replace('[^0-9]', '')
#Tampilkan hasilnya
print(dqlabregex[['jumlah_member']])

# Tugas
# Kali ini Sunyi ingin menghapus kesalahan input data pada kolom jumlah_member yang terdapat pada dataframe dqlabregex. Caranya dengan membuat sebuah sintaks untuk menghapus karakter non-numerik pada kolom tersebut atau dengan kata lain ubah karakter non-numerik menjadi string kosong.

