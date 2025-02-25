import pandas as pd
import numpy as np
pd.set_option('display.max_columns', None)

rating_df = pd.read_csv('https://storage.googleapis.com/dqlab-dataset/title.ratings.tsv', sep='\t')

print(rating_df.info())

# Tugas
# Selanjutnya, kita akan menampilkan tipe data dan informasi lainnya dari masing-masing kolom yang ada pada table rating (rating_df)

