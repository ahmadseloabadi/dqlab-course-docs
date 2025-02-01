import matplotlib.pyplot as plt
from plotnine import *
import pandas as pd 
df_penduduk = pd.read_csv('https://storage.googleapis.com/dqlab-dataset/datakependudukandki-dqlab.csv')

(ggplot(data=df_penduduk)
+ aes(x='NAMA KABUPATEN/KOTA', y='JUMLAH')
+ geom_boxplot()
+ coord_flip()
).draw()
plt.tight_layout()
plt.show()

# Teori
# Boxplot biasanya digunakan untuk melihat seberapa spread out dataset yang kita miliki. plotnine telah menyediakan geom bernama geom_boxplot() .

# Buatlah sebuah boxplot yang menggambarkan persebaran dari data jumlah penduduk di masing-masing
# kabupaten/kota!