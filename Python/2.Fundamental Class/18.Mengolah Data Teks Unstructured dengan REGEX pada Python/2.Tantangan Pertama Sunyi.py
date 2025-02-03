#Import library yang dibutuhkan
import pandas as pd

#Baca file dqlabregex.tsv
dqlabregex = pd.read_csv("https://storage.googleapis.com/dqlab-dataset/dqlabregex.tsv", sep = '\t')

#Buat kolom baru kota_awalan_J_S
dqlabregex['kota_awalan_j_s'] = dqlabregex['kota'].str.contains('^(j|s)', case = False)

#Tampilkan hasilnya
print(dqlabregex[['kota','kota_awalan_j_s']])

# Ingat! Notasi regex ^ digunakan untuk mencocokan awalan karakter. Jadi notasi ’ mencocokan apakah nilai pada kolom kota diawali oleh karakter j atau s. Sedangkan parameter case=False digunakan untuk mengabaikan besar kecilnya huruf (ignore case sensitive). Sehingga Jakarta (kota diawali dengan J) dan Semarang (kota diawali dengan S) akan sesuai dengan sintaks tersebut.

