import pandas as pd
import numpy as np
import io
import pandas_profiling
retail_raw = pd.read_csv('https://storage.googleapis.com/dqlab-dataset/retail_raw_reduced_data_quality.csv')

# Count kolom city
count_city=retail_raw['city'].count()
print('Count kolom count_city:',count_city)

# Tugas praktek: count kolom product_id
count_product_id = retail_raw['product_id'].count()
print('Count kolom product_id:',count_product_id)

# Teori
# Fungsi count menghitung jumlah pengamatan non-NA/non-null dalam suatu series/column. Di lain pihak, fungsi len akan hanya menghitung jumlah elemen dari kolom baik kolom bersangkutan memiliki atau tidak memiliki missing value (include missing value).

# Tugas Praktek:

# Setelah yang tadi cukup lancar, aku berniat mengetahui jumlah non-null value dari kolom product_id dari dataframe retail_raw agar hasil analisisnya lebih lengkap.