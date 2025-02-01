import matplotlib.pyplot as plt
from plotnine import *
import pandas as pd 
df_penduduk = pd.read_csv('https://storage.googleapis.com/dqlab-dataset/datakependudukandki-dqlab.csv')

(ggplot(data=df_penduduk)
+ aes(x='LUAS WILAYAH (KM2)')
+ geom_histogram()
).draw()
plt.show()

# Tugas
# Histogram berguna untuk menggambarkan distribusi data atau merangkum data. Di sini, kita akan menggunakan histogram untuk melihat distribusi luas wilayah di data kita. Untuk membuat histogram di plotnine , kita dapat menggunakan geom_histogram() .


# Buatlah sebuah histogram menggunakan data df_penduduk yang menggambarkan distribusi luas wilayah di dataset kependudukan! x-axis di histogram ini berupa luas wilayah (dalam kilometer persegi), sementara y-axis-nya berupa jumlah kelurahan yang memiliki luas wilayah tersebut.