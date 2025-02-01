import matplotlib.pyplot as plt
from plotnine import *
import pandas as pd 
df_penduduk = pd.read_csv('https://storage.googleapis.com/dqlab-dataset/datakependudukandki-dqlab.csv')

(ggplot(data=df_penduduk)
+ aes(x='NAMA KABUPATEN/KOTA', y='JUMLAH ')
).draw()
plt.show()


# Tugas
#  kita perlu mendefinisikan variabel-variabel apa yang ingin kita visualisasikan di plot, dengan mendefinisikan aestetik. Aestetik dapat didefinisikan dengan menggunakan fungsi aes() . Untuk x-axis, kita akan menggunakan variabel NAMA KABUPATEN/KOTA , sementara untuk y-axis kita akan gunakan variabel JUMLAH .
# Teori
# Dengan fungsi aes , tambahkan argumen x dengan variabel berupa kolom yang berisi nama kabupaten/kota di dataset penduduk, dan untuk argumen y gunakan variabel berupa kolom berisi jumlah penduduk di dataset penduduk.