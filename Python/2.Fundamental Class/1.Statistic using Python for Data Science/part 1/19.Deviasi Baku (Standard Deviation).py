import numpy as np
import pandas as pd
raw_data = pd.read_csv("https://storage.googleapis.com/dqlab-dataset/dataset_statistic.csv", sep=';')

# menghitung deviasi baku sampel pendapatan menggunakan method std() dari pandas
print (raw_data['Pendapatan'].std())
 
# menghitung deviasi baku sampel pendapatan menggunakan method std() dari numpy
print (np.std(raw_data['Pendapatan'], ddof = 1))

# Teori
# Deviasi baku adalah ukuran sebaran pusat yang diperoleh dengan cara menarik akar kuadrat dari hasil perhitungan variansi. Hal ini dilakukan karena nilai variansi umumnya memiliki nilai yang lebih besar daripada nilai aslinya sebagai efek dari pengkuadratan dan ini menjadikan variansi sulit untuk diinterpretasikan. 
