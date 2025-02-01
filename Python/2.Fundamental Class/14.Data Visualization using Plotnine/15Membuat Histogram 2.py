import matplotlib.pyplot as plt
from plotnine import *
import pandas as pd 
df_penduduk = pd.read_csv('https://storage.googleapis.com/dqlab-dataset/datakependudukandki-dqlab.csv')

(ggplot(data=df_penduduk)
+ aes(x='LUAS WILAYAH (KM2)', y='stat(count/max(count))')
+ geom_histogram()
).draw()
plt.show()

# Teori
# Terkadang, dalam pembuatan histogram, kita ingin tinggi bar di plot kita memiliki nilai maksimal 1. Oleh karena itu kita perlu melakukan kalkulasi. Kita dapat melakukan kalkulasi tersebut langsung di aestetik dengan menggunakan bantuan stat (statistical transformation atau transformasi statistik).

# Secara default, ketika kita menggunakan histogram sebenarnya plotnine telah mendefinisikan y = 'stat(count)' yang berarti y akan merepresentasikan count dari luas wilayah tersebut. Karena sekarang kita ingin supaya tinggi bar kita memiliki nilai maksimal 1, kita perlu mendefinisikan y secara eksplisit dengan definisi kita sendiri.

# Definisikan y di fungsi aes() dan masukkan 'stat(count/max(count))' sebagai nilainya.