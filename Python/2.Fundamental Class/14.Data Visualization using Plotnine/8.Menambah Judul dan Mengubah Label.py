import matplotlib.pyplot as plt
from plotnine import *
import plotnine
import pandas as pd 
df_penduduk = pd.read_csv('https://storage.googleapis.com/dqlab-dataset/datakependudukandki-dqlab.csv')

plotnine.options.figure_size=(12, 4.8)
(ggplot(data=df_penduduk)
+ aes(x='NAMA KABUPATEN/KOTA', y='JUMLAH')
+ geom_col()
+ coord_flip()
+ labs(title="Jumlah penduduk per kabupaten/kota di DKI Jakarta (2013)",
x= "Jumlah Penduduk",
y="Kabupaten/Kota")
).draw()
plt.tight_layout(rect=[0,0,1,0.9])
plt.show()

# Teori

# Kita dapat menambahkan judul dan mengubah label pada axis di grafik dengan fungsi labs() . Berikut beberapa argumen yang dapat kita gunakan:


# title : menambahkan judul plot
# x : mendefinisikan label pada x-axis
# y : mendefinisikan label pada y-axis