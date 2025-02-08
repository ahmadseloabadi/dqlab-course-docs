import numpy as np
import pandas as pd
pd.set_option("display.max_columns", None)

import ssl
ssl._create_default_https_context = ssl._create_unverified_context

covid_url = "https://storage.googleapis.com/dqlab-dataset/covid19_worldwide_2020.json"
df_covid_worldwide = pd.read_json(covid_url)
df_covid_worldwide = df_covid_worldwide.set_index("date").sort_index().dropna()

countries_url = "https://storage.googleapis.com/dqlab-dataset/country_details.json"
df_countries = pd.read_json(countries_url)

df_covid_denormalized = pd.merge(df_covid_worldwide.reset_index(),df_countries,on='geo_id').set_index('date')
print(df_covid_denormalized.head())


# Tugas
# Selanjutnya adalah mapping data covid19 dan data country. Gunakan fungsi .merge pada pandas untuk menggabungkan df_covid_worldwide dan df_countries. 

# Untuk merge, gunakan kolom geo_id, (ingat ya df_covid_worldwide memiliki index pada kolom date untuk itu perlu .reset_index()). Setelah merge dapat diset kembali index ke kolom date.

# Lalu print sample data dengan menggunakan head().