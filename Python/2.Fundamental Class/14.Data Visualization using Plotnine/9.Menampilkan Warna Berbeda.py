import matplotlib.pyplot as plt
from plotnine import *
import plotnine
import pandas as pd 
df_penduduk = pd.read_csv('https://storage.googleapis.com/dqlab-dataset/datakependudukandki-dqlab.csv')

plotnine.options.figure_size=(10, 3.6)
(ggplot(data=df_penduduk)
+ aes(x='NAMA KABUPATEN/KOTA', y='JUMLAH', fill='JENIS KELAMIN')
+ geom_col()
+ coord_flip()
+ labs(title='Jumlah penduduk per kabupaten/kota di DKI Jakarta (2013)',
x='Jumlah Penduduk',
y='Kabupaten/Kota')
).draw()
plt.tight_layout(rect=[0,0,1,0.9])
plt.show()

# Tugas
# Bagaimana jika kita ingin menampilkan bar chart yang memiliki warna berbeda untuk perempuan dan laki-laki? Kita dapat membuatnya dengan mendefinisikan argumen fill di fungsi aes .
# Pada argumen fill di fungsi aes , berikan nilai berupa nama kolom jenis kelamin di data kependudukan kita.