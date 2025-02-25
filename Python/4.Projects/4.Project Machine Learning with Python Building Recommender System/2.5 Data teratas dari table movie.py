import pandas as pd
import numpy as np
pd.set_option('display.max_columns', None)

movie_df = pd.read_csv('https://storage.googleapis.com/dqlab-dataset/title.basics.tsv', sep='\t')

print(movie_df.head())

# Tugas
# Hal pertama yang akan kita lakukan adalah menampilkan 5 data teratas yang ada pada table movie (movie_df). 


