import matplotlib.pyplot as plt
from plotnine import *
import plotnine
import pandas as pd 
df_penduduk = pd.read_csv('https://storage.googleapis.com/dqlab-dataset/datakependudukandki-dqlab.csv')
df_penduduk_luas_jumlah = df_penduduk.groupby(['NAMA KELURAHAN', 'LUAS WILAYAH (KM2)'])[['JUMLAH']].agg('sum').reset_index()

plotnine.options.figure_size=(10, 3.6)
(ggplot(data=df_penduduk_luas_jumlah)
+ aes(y='LUAS WILAYAH (KM2)', x='JUMLAH', color='JUMLAH')
+ geom_point()
).draw()
plt.show()

# Teori
# Pada fungsi aes() , gunakan argumen color agar kita dapat memberikan warna yang merepresentasikan besarnya nilai dari variabel jumlah penduduk.