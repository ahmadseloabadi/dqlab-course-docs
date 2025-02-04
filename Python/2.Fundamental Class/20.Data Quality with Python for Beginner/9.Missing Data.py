import pandas as pd
import numpy as np
import io
import pandas_profiling
retail_raw = pd.read_csv('https://storage.googleapis.com/dqlab-dataset/retail_raw_reduced_data_quality.csv')

# Check kolom yang memiliki missing data
print('Check kolom yang memiliki missing data:')
print(retail_raw.isnull().any())

# Filling the missing value (imputasi)
print('\nFilling the missing value (imputasi):')
print(retail_raw['quantity'].fillna(retail_raw.quantity.mean()))

# Drop missing value
print('\nDrop missing value:')
print(retail_raw['quantity'].dropna())

# Teori
# Missing Data
# Dataset yang ditemui di real-world biasanya akan memiliki banyak missing value. Kemampuan untuk treatment missing value sangat penting karena jika membiarkan missing value itu dapat memengaruhi analisis dan machine learning model. Sehingga jika menemukan nilai yang hilang dalam dataset, harus melakukan treatment sedemikian rupa. Cara check kolom yang mempunyai missing value:



# Cara treatment terhadap missing-value antara lain:

# Leave as it is (dibiarkan)
# Filling the missing value (imputasi)
# Drop them (hapus row yang mengandung missing value)
 

# Imputasi merupakan suatu metode treatment terhadap missing value dengan mengisinya menggunakan teknik tertentu. Bisa menggunakan mean, modus ataupun menggunakan predictive modelling. Pada modul ini akan membahas mengenai pemanfaatan function fillna dari Pandas untuk imputasi ini, yaitu



# .function() yang dimaksud pada syntax di atas adalah penggunan fungsi .mean() atau .mode(). Penggunaan fungsi .mean() atau .mode() ini bergantung pada kondisi yang mengharuskan menggunakan nilai rata - rata atau modus dari kolom yang akan diimputasi, seperti

# nama_dataframe['nama_kolom'].fillna(nama_dataframe.nama_kolom.mean())
# atau

# nama_dataframe['nama_kolom'].fillna(nama_dataframe.nama_kolom.mode())
 

# Drop row yang mengandung missing value. Dapat menggunakan function dropna dari Pandas.

# # Tugas
# Untuk menangani missing data pada retail_raw, 

# Ceklah jika terdapat missing value pada variabel dataframe, dan kemudian cetak ke console
# Imputasi missing value pada kolom quantity dengan menggunaan nilai rataan (mean), dan kemudian cetak ke console
# Drop-lah missing value pada kolom quantity, dan kemudian cetak ke console