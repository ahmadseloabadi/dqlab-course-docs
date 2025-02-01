import matplotlib.pyplot as plt
from plotnine import *
import pandas as pd 
df_inflasi = pd.read_csv('https://storage.googleapis.com/dqlab-dataset/inflasi.csv')

df_inflasi['Bulan'] = pd.to_datetime(df_inflasi['Bulan'])
(ggplot(data=df_inflasi[df_inflasi['Negara']=='Indonesia'])
+ aes(x='Bulan',y='Inflasi')
+ geom_line()
).draw()
plt.show()

# Teori
# Line chart biasanya digunakan untuk memvisualisasikan pergerakan data seiring berjalannya waktu. Dalam pembuatan line chart kali ini, kita akan menggunakan data inflasi. geom yang dapat kita gunakan adalah geom_line() . Dengan line chart yang kita buat, kita akan mengetahui pergerakan inflasi (dalam persen) di negara Indonesia dan Singapura dari bulan ke bulan, mulai dari Januari sampai Oktober 2017.

# Namun sebelum itu kita perlu mengubah tipe data kolom Bulan di df_inflasi dari string menjadi datetime. Hal ini agar plotnine dapat mengetahui bahwa Bulan adalah kolom yang menggambarkan waktu. Sehingga, plotnine akan secara otomatis mengurutkan inflasi di data kita berdasarkan urutan bulan.


# Sebagai awal, kita akan membuat line chart untuk negara Indonesia terlebih dahulu. Buatlah line chart yang menunjukkan pergerakan inflasi (dalam persen) dari bulan ke bulan untuk negara Indonesia dengan menggunakan geom_line() .

# Gunakan aes() untuk mendefinisikan variabel di x-axis dan y-axis. Di x-axis variabelnya adalah Bulan, serta di y-axis variabelnya adalah Inflasi.