#Import library yang dibutuhkan
import pandas as pd

#Baca file dqlabregex.tsv
dqlabregex = pd.read_csv("https://storage.googleapis.com/dqlab-dataset/dqlabregex.tsv", sep = '\t')

#Buat kolom baru pencatat_senja
dqlabregex['pencatat_senja'] = dqlabregex['staf_pencatat'].str.contains('Sen.?ja')

#Tampilkan hasilnya
print(dqlabregex[['staf_pencatat','pencatat_senja']])