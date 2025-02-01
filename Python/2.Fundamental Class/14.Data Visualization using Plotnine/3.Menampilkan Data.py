import pandas as pd 
df_penduduk = pd.read_csv('https://storage.googleapis.com/dqlab-dataset/datakependudukandki-dqlab.csv')

print(df_penduduk.head())

# Teori
# Ide dasar dari grammar of graphics adalah, sebuah grafik statistik merupakan pemetaan dari data ke atribut-atribut aestetik (seperti warna, ukuran, dan bentuk) dari objek-objek geometris (seperti titik dan garis). Pada package plotnine , sebuah grafik terdiri dari komponen-komponen sebagai berikut:

# 1. data: sebuah data frame yang berisi data yang ingin kita visualisasikan
# 2. geoms (geometric objects): objek geometris seperti lingkaran, titik, dan teks yang ingin kita lihat di grafik
# 3. aesthetics: pemetaan dari data ke geometric objects seperti posisi, ukuran, warna, bentuk, dll.