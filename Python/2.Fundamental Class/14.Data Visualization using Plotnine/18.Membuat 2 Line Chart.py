import matplotlib.pyplot as plt
from plotnine import *
import plotnine
import pandas as pd 
df_inflasi = pd.read_csv('https://storage.googleapis.com/dqlab-dataset/inflasi.csv')
df_inflasi['Bulan'] = df_inflasi['Bulan'].astype('datetime64')

plotnine.options.figure_size=(12, 3.6)
(ggplot(data=df_inflasi)
+ aes(x='Bulan', y='Inflasi', color='Negara')
+ geom_line()
).draw()
plt.show()

# Teori
# Bagaimana jika kita ingin membuat line chart untuk negara Singapura dan Indonesia di plot yang sama? Kita dapat mendefinisikan argumen color di fungsi aes() .

# Isi argumen color dengan kolom negara yang ada di df_inflasi , agar kita mempunyai dua buah garis di plot kita: garis untuk Indonesia dan Singapura.