#import library yang dibutuhkan
import pandas as pd
import numpy as np
pd.set_option('display.max_columns', None)

#lakukan pembacaan dataset
movie_df = pd.read_csv('https://storage.googleapis.com/dqlab-dataset/title.basics.tsv', sep='\t') #untuk menyimpan title_basics.tsv
rating_df = pd.read_csv('https://storage.googleapis.com/dqlab-dataset/title.ratings.tsv', sep='\t') #untuk menyimpan title.ratings.tsv


# Teori
# Langkah pertama yang harus kita lakukan adalah melakukan import library yang dibutuhkan untuk pengerjaan project ini dan melakukan pembacaan dataset.

# Notes :

# Library yang akan kita gunakan adalah pandas (as pd) dan numpy (as np)
# Dataset yang akan digunakan adalah title.basics.tsv dan title.ratings.tsv
# Akses dataset :

# title.basic.tsv = https://storage.googleapis.com/dqlab-dataset/title.basics.tsv
# title.ratings.tsv = https://storage.googleapis.com/dqlab-dataset/title.ratings.tsv