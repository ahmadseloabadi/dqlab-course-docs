import numpy as np
import pandas as pd
raw_data = pd.read_csv("https://storage.googleapis.com/dqlab-dataset/dataset_statistic.csv", sep=';')

# mencari median atau 50% dari data menggunakan pandas
print(raw_data['Pendapatan'].quantile(q=0.5))
 
# mencari median atau 50% dari data menggunakan numpy
print(np.quantile(raw_data['Pendapatan'], q=0.5))

# Teori
# Kuantil adalah nilai-nilai data yang membagi data yang telah diurutkan sebelumnya menjadi beberapa bagian yang sama besar ukurannya. Beberapa ukuran fraktil ini diantaranya adalah:

# Kuartil: Adalah kuantil yang membagi data menjadi empat bagian sama besar. Kuartil ke-2 dari adalah median dari data tersebut.
# Desil: Adalah kuantil yang membagi data menjadi 10 bagian sama besar.
# Persentil: Adalah kuantil yang membagi data menjadi 100 bagian sama besar.
# Untuk mencari fraktil dari data, kita dapat menggunakan method .quantile dari pandas atau numpy