import pandas as pd
import numpy as np
pd.set_option('display.max_columns', None)

movie_df = pd.read_csv('https://storage.googleapis.com/dqlab-dataset/title.basics.tsv', sep='\t')

movie_df = movie_df.loc[(movie_df['primaryTitle'].notnull()) & (movie_df['originalTitle'].notnull())]

print(movie_df.loc[movie_df['genres'].isnull()])

# Tugas
# Selain kolom 'primaryTitle' dan 'originalTitle',masih terdapat kolom lain yang memiliki data bernilai NULL. Kolom tersebut adalah kolom 'genres'

# Selanjutnya, kita akan melakukan hal yang sama seperti yang sudah kita lakukan pada kolom 'primaryTitle' dan 'originalTitle'.

# Lakukan pengecekan terhadap bentuk data dari kolom genres yang bernilai NULL. 