import pandas as pd
import numpy as np
pd.set_option('display.max_columns', None)

movie_df = pd.read_csv('https://storage.googleapis.com/dqlab-dataset/title.basics.tsv', sep='\t')

print(movie_df.isnull().sum())

# Tugas
# Merupakan suatu hal yang wajib untuk melakukan pengecekan terhadap nilai NULL yang ada di dalam dataset saat melakukan cleaning.

# Oleh karena itu, hal selanjutnya yang akan kita lakukan adalah melakukan pengecekan apakah ada data bernilai NULL pada masing-masing kolom yang ada pada table movie (movie_df)