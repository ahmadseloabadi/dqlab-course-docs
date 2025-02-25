import pandas as pd
import numpy as np
pd.set_option('display.max_columns', None)

rating_df = pd.read_csv('https://storage.googleapis.com/dqlab-dataset/title.ratings.tsv', sep='\t')

print(rating_df.head())

# Tugas
# Seperti yang sudah kita lakukan pada table movie (movie_df) sebelumnya, sekarang kita akan menampilkan 5 data teratas dari table ratings (rating_df)

