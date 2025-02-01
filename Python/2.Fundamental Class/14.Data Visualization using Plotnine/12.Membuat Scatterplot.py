import matplotlib.pyplot as plt
from plotnine import *
import pandas as pd 
df_penduduk = pd.read_csv('https://storage.googleapis.com/dqlab-dataset/datakependudukandki-dqlab.csv')

df_penduduk_luas_jumlah = df_penduduk.groupby(['NAMA KELURAHAN', 'LUAS WILAYAH (KM2)'])['JUMLAH'].agg('sum').reset_index()

(ggplot(data=df_penduduk_luas_jumlah)
+ aes(x='JUMLAH',y='LUAS WILAYAH (KM2)')
+ geom_point() 
).draw()
plt.show()

# Tugas
# Scatterplot biasanya digunakan untuk melihat hubungan antara dua variabel. Kita dapat menggunakan scatterplot untuk melihat hubungan antara jumlah penduduk di suatu kelurahan dengan luas kelurahan tersebut. Untuk mempermudah, kita akan mendefinisikan data frame baru, df_penduduk_luas_jumlah , sebagai rangkuman dari kolom nama kelurahan, luas wilayah, dan jumlah penduduk.

# Untuk membuat scatterplot, kita dapat menggunakan geom geom_point() .
# Buatlah sebuah scatterplot dengan menggunakan data di data frame df_penduduk_luas_jumlah . Gunakan ggplot() untuk mendefinisikan data, aes() untuk menentukan aestetik, dan geom_point() sebagai geom -nya. Variabel di x-axis adalah jumlah penduduk, sementara di y-axis adalah luas wilayah (km persegi).