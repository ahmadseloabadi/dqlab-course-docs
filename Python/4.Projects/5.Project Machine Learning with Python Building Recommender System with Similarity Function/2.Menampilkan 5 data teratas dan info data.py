import pandas as pd
import numpy as np
pd.set_option('display.max_columns', None)

movie_rating_df = pd.read_csv('https://storage.googleapis.com/dqlab-dataset/movie_rating_df.csv')

#tampilkan 5 baris teratas dari movive_rating_df
print(movie_rating_df.head())

#tampilkan info mengenai tipe data dari tiap kolom
print(movie_rating_df.info())

# Tugas
# Setelah sebelumnya kita sudah menyimpan dataset pada variabel movie_rating_df, hal selanjutnya yang akan kita lakukan adalah menampilkan lima baris teratas dari dataset tersebut dan menampilkan info mengenai tipe data dan jumlah non-null value dari tiap kolom yang ada pada dataset. 

