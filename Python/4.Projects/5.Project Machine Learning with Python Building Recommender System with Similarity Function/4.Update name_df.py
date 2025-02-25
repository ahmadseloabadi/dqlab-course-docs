import pandas as pd
import numpy as np
pd.set_option('display.max_columns', None)

name_df = pd.read_csv('https://storage.googleapis.com/dqlab-dataset/actor_name.csv')
#Kita hanya akan membutuhkan kolom nconst, primaryName, dan knownForTitles
name_df = name_df[['nconst','primaryName','knownForTitles']]

#Tampilkan 5 baris teratas dari name_df
print(name_df.head())

# Tugas
# Kita hanya akan membutuhkan kolom nconst, primaryName, dan knownForTitles pada name_df untuk mencocokkan aktor/aktris ini dengan film yang ada. 

