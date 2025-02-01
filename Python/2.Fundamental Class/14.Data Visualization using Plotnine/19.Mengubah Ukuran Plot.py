import matplotlib.pyplot as plt
from plotnine import *
import pandas as pd 
df_inflasi = pd.read_csv('https://storage.googleapis.com/dqlab-dataset/inflasi.csv')
df_inflasi['Bulan'] = df_inflasi['Bulan'].astype('datetime64')

(ggplot(data=df_inflasi)
+ aes(x='Bulan', y='Inflasi', color='Negara')
+ geom_line()
+ theme(figure_size =(10, 5))
).draw()
plt.show()

# Teori
# Kita bisa lihat bahwa label di x-axis kita bertabrakan. Salah satu solusi yang dapat dilakukan adalah mengubah ukuran dari plot yang kita buat.
# Gunakan fungsi theme() dari plotnine dan berikan argumen figure_size untuk mendefinisikan grafik berukuran 10x5. figure_size menerima nilai berupa tuple yang berisi (panjang, tinggi) dalam inch.

# Note : Lebih lanjut tentang theme() dapat dibaca di (https://plotnine.readthedocs.io/en/stable/generated/plotnine.themes.theme.html)

