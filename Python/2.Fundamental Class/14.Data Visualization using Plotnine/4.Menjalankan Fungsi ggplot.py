import matplotlib.pyplot as plt
from plotnine import *
import pandas as pd 
df_penduduk = pd.read_csv('https://storage.googleapis.com/dqlab-dataset/datakependudukandki-dqlab.csv')

ggplot(data=df_penduduk).draw()
plt.show()

# Teori
# Pertama-tama, kita akan membuat plot terlebih dahulu. Untuk membuat plot, kita akan menggunakan fungsi ggplot . Untuk membuat sebuah plot kita perlu ggplot data apa yang ingin kita visualisasikan, dengan argumen data .

# Note : Karena kita belum mendefinisikan komponen-komponen lain seperti aestetik dan objek geometris, maka kita akan mendapatkan sebuah plot kosong