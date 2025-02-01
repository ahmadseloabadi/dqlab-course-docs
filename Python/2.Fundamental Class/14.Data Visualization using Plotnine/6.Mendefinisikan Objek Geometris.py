import matplotlib.pyplot as plt
from plotnine import *
import pandas as pd 
df_penduduk = pd.read_csv('https://storage.googleapis.com/dqlab-dataset/datakependudukandki-dqlab.csv')

(ggplot(data=df_penduduk)
+ aes(x='NAMA KABUPATEN/KOTA', y='JUMLAH')
+ geom_col()
).draw()
plt.show()

# Teori
# Ketika menggabungkan dua atau lebih komponen, perlu diperhatikan bahwa:
# 1. Kita menggunakan operator +
# 2. Kita perlu menggunakan tanda kurung di keseluruhan fungsi kita, karena kalau tidak, Python akan menganggap itu sebagai error.

# Jadi, alih-alih menuliskan:
# ggplot(data=df_penduduk)
# + aes(x='NAMA KABUPATEN/KOTA', y='JUMLAH')

# Kita harus menuliskan tanda kurung di sekitar fungsinya:
# (ggplot(data=df_penduduk)
# + aes(x='NAMA KABUPATEN/KOTA', y='JUMLAH'))

# Sebagai contoh, kita menggunakan bars untuk membuat visualisasi jumlah penduduk per kabupaten/kota. Kita akan menggunakan geom geom_col() . Tinggi dari bars yang dihasilkan oleh geom_col() merepresentasikan data yang telah kita definisikan di y-axis.
# Tambahkan geom untuk membuat bar chart di kode di bawah ini, agar kita dapat memunculkan data jumlah penduduk.


# Notes : Lebih lanjut tentang geom_col() dapat dibaca di (https://plotnine.readthedocs.io/en/stable/generated/plotnine.geoms.geom_col.html)

