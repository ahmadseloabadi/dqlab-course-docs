import pandas as pd
import numpy as np
pd.set_option('display.max_columns', None)
name_df = pd.read_csv('https://storage.googleapis.com/dqlab-dataset/actor_name.csv')
name_df = name_df[['nconst','primaryName','knownForTitles']]

#Melakukan pengecekan variasi
print(name_df['knownForTitles'].apply(lambda x: len(x.split(','))).unique())

#Mengubah knownForTitles menjadi list of list
name_df['knownForTitles'] = name_df['knownForTitles'].apply(lambda x: x.split(','))

#Mencetak 5 baris teratas
print(name_df.head())

# Tugas
# Hal selanjutnya yang ingin kita ketahui adalah mengenai variasi dari jumlah film yang dapat dibintangi oleh seorang aktor.

# Tentunya seorang aktor dapat membintangi lebih dari 1 film, bukan? maka akan diperlukan untuk membuat table yang mempunyai relasi 1-1 ke masing-masing title movie tersebut. Kita akan melakukan unnest terhadap table tersebut. 

# Pekerjaan selanjutnya yang harus kita lakukan adalah :

# Melakukan pengecekan variasi jumlah film yang dibintangi oleh aktor.
# Mengubah kolom 'knownForTitles' menjadi list of list.