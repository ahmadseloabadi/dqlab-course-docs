import pandas as pd
import numpy as np
pd.set_option('display.max_columns', None)

director_writers = pd.read_csv('https://storage.googleapis.com/dqlab-dataset/directors_writers.csv')

#Mengubah director_name menjadi list
director_writers['director_name'] = director_writers['director_name'].apply(lambda row: row.split(','))
director_writers['writer_name'] = director_writers['writer_name'].apply(lambda row: row.split(','))

#Tampilkan 5 data teratas
print(director_writers.head())

# Tugas
# Setelah menampilkan informasi mengenai dataframe directors_writer, dapat dilihat bahwa tidak ada nilai NULL pada dataset tersebut. Hal selanjutnya yang akan kita lakukan adalah mengubah director_name dan writer_name dari string menjadi list

 

# Setelah itu, tampilkan 5 baris teratas dari dataframe director_writers