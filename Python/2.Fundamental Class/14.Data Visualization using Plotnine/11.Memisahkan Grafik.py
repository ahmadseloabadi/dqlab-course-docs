import matplotlib.pyplot as plt
from plotnine import *
import plotnine
import pandas as pd 
df_penduduk = pd.read_csv('https://storage.googleapis.com/dqlab-dataset/datakependudukandki-dqlab.csv')

plotnine.options.figure_size=(10, 3.6)
(ggplot(data=df_penduduk[df_penduduk['NAMA KECAMATAN'] == 'CENGKARENG'])
+ aes(x='NAMA KELURAHAN', y='JUMLAH', fill='JENIS KELAMIN')
+ geom_col(position = position_dodge)
+ coord_flip()
+ labs(title='Jumlah penduduk per kelurahan di DKI Jakarta (2013)',
x='Kelurahan',
y='Jumlah Penduduk')
).draw()
plt.tight_layout(rect=[0,0,1,0.9])
plt.show()

# Tugas
# Contoh plot yang telah kita buat adalah bar chart yang berbentuk stacked, dalam artian untuk data jenis kelamin laki-laki dan perempuan, keduanya bertumpuk di satu bar. Bagaimana kalau kita ingin memisahkannya dan meletakannya di samping satu sama lain?

# Kita dapat menggunakan argumen position di fungsi geom_col() . Untuk memisahkan grafik tersebut kita dapat mendefinisikan position = position_dodge .