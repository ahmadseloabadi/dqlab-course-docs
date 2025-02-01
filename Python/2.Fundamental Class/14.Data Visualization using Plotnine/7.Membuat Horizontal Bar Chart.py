import matplotlib.pyplot as plt
from plotnine import *
import pandas as pd 
df_penduduk = pd.read_csv('https://storage.googleapis.com/dqlab-dataset/datakependudukandki-dqlab.csv')

(ggplot(data=df_penduduk)
+ aes(x='NAMA KABUPATEN/KOTA', y='JUMLAH')
+ geom_col()
+ coord_flip()
).draw()
plt.tight_layout()
plt.show()

# Tugas
# Satu hal yang mungkin kita perhatikan adalah label di x-axis yang berdempetan. Hal ini karena label-label di x-axis kita mempunyai nama yang cukup panjang. Salah satu solusi yang dapat dilakukan adalah membuat horizontal bar chart. Di plotnine , kita dapat menggunakan coord_flip() agar x-axis di grafik berubah posisi dari horizontal menjadi vertikal, dan y-axis berubah posisi dari vertikal ke horizontal.