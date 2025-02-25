import pandas as pd
import numpy as np
pd.set_option('display.max_columns', None)

movie_df = pd.read_csv('https://storage.googleapis.com/dqlab-dataset/title.basics.tsv', sep='\t')

print(movie_df.loc[(movie_df['primaryTitle'].isnull()) | (movie_df['originalTitle'].isnull())])

# Tugas
# Dari hasil pengecekan nilai NULL yang sudah dilakukan sebelumnya, diketahui bahwa kolom primaryTitle dan originalTitle memiliki banyak data yang bernilai NULL.

# Hal selanjutnya yang akan kita lakukan adalah melakukan pengecekan terhadap bentuk data dari kolom primaryTitle dan originalTitle yang bernilai NULL, apakah salah satu atau kedua kolom yang dimaksud ada data yang bernilai NULL.