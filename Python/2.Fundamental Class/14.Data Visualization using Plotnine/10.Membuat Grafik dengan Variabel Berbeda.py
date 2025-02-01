import matplotlib.pyplot as plt
from plotnine import *
import plotnine
import pandas as pd 
df_penduduk = pd.read_csv('https://storage.googleapis.com/dqlab-dataset/datakependudukandki-dqlab.csv')

plotnine.options.figure_size=(14, 3.6)
(ggplot(data=df_penduduk[df_penduduk['NAMA KECAMATAN'] == 'CENGKARENG'])
+ aes(x='NAMA KELURAHAN', y='JUMLAH', fill='JENIS KELAMIN')
+ geom_col()
+ coord_flip()
+ labs(title='Jumlah penduduk per kelurahan di Kecamatan Cengkareng (2013)',
x='Jumlah Penduduk',
y='Kelurahan')
).draw()
plt.tight_layout(rect=[0,0,1,0.9])
plt.show()

# Tugas
# Bar chart menggambarkan jumlah penduduk per kelurahan di kecamatan Cengkareng. 
# Judul grafik yaitu "Jumlah penduduk per kelurahan di Kecamatan Cengkareng (2013)"
# Pada axis yang berisi nama kelurahan, berikan label "Kelurahan"
# Pada axis yang berisi jumlah penduduk, berikan label "Jumlah Penduduk"
# Berikan warna yang berbeda untuk jenis kelamin laki-laki dan perempuan.