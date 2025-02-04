import pandas as pd
import numpy as np
import io
import pandas_profiling
retail_raw = pd.read_csv('https://storage.googleapis.com/dqlab-dataset/retail_raw_reduced_data_quality.csv')

# Kolom city
length_city = len(retail_raw['city'])
print('Length kolom city',length_city)

# Tugas Praktek: Kolom product_id
length_product_id = len(retail_raw['product_id'])
print('Length kolom product_id',length_product_id)

# Teori
# Fungsi len menghitung jumlah pengamatan dalam suatu series/column. Fungsi len akan menghitung semua pengamatan, terlepas dari apakah ada null-value atau tidak (include missing value).

# Tugas Praktek:

# Setelah membaca modul referensi Kroma, aku coba memulai analisis dengan menginspeksi length dari kolom product_id dari dataframe retail_raw! Aku akan membuat syntaks Python untuk mencapai hal tersebut di code editor. 