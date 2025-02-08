import numpy as np
import pandas as pd
pd.set_option("display.max_columns", None)

import ssl
ssl._create_default_https_context = ssl._create_unverified_context

covid_url = "https://storage.googleapis.com/dqlab-dataset/covid19_worldwide_2020.json"
df_covid_worldwide = pd.read_json(covid_url)

print("Informasi data frame awal:")
df_covid_worldwide.info()

df_covid_worldwide = df_covid_worldwide.set_index("date").sort_index()

print("\nInformasi data frame setelah set index kolom date:")
df_covid_worldwide.info()

# Tugas
# Dari hasil sebelumnya terlihat bahwa data frame df_covid_worldwide memiliki kolom yang berhubungan dengan tanggal (kolom date). Cek terlebih dahulu tipe data seluruh kolom pada data frame df_covid_worldwide ini. Kamu dapat menggunakan .dtypes atau .info(). Untuk pengerjaan kasus ini akan digunakan method .info().

# Setelah tipe data di setiap kolomnya dicek dan kolom date juga sudah bertipe numpy.datetime64[ns] maka kolom ini dapat diset sebagai index untuk data frame df_covid_worldwide ini, menggunakan method .set_index. Setelah itu df_covid_worldwide diurutkan berdasarkan indeknya menggunakan .set_index, lakukan dengan menggunakan teknik chaining di pandas.

# Kemudian cek kembali info dataframe yang telah diubah ini.