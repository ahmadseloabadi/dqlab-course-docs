import numpy as np
import pandas as pd
raw_data = pd.read_csv("https://storage.googleapis.com/dqlab-dataset/dataset_statistic.csv", sep=';')

# menghitung variansi Pendapatan menggunakan method .var() dari pandas
print (raw_data['Pendapatan'].var())
 
# menghitung variansi Pendapatan menggunakan method .var() dari numpy
print (np.var(raw_data['Pendapatan']))

# mengatur variansi populasi dengan method `.var()` dari pandas
print (raw_data['Pendapatan'].var(ddof=0))

# note: Note: Perhatikan bahwa nilai variansi keduanya berbeda. Hal ini karena secara default pandas menggunakan variansi sampel sedangkan numpy menggunakan variansi populasi. Untuk memperoleh hasil yang sama kita dapat menggunakan parameter ddof=0 pada method .var() untuk memperoleh variansi populasi.

# pejelasan
# Variansi adalah ukuran sebaran pusat yang diperoleh dengan cara menghitung jarak antara tiap titik data pada sampel atau populasi dengan nilai mean.
