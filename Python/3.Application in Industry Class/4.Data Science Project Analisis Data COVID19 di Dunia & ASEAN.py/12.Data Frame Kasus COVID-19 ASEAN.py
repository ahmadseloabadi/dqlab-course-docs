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

df_covid_denormalized = pd.merge(df_covid_worldwide.reset_index(), df_countries, on="geo_id").set_index("date")

asean_country_id = ["ID", "MY", "SG", "TH", "VN"]
filter_list = [(df_covid_denormalized["geo_id"]==country_id).to_numpy() for country_id in asean_country_id]
filter_array = np.column_stack(filter_list).sum(axis=1, dtype="bool")
df_covid_denormalized_asean = df_covid_denormalized[filter_array].sort_index()

print("Cek nilai unik di kolom 'country_name':", df_covid_denormalized_asean["country_name"].unique())
print(df_covid_denormalized_asean.head())

# Tugas
# Selanjutnya adalah membandingkan kasus covid19 di Indonesia (ID) dengan negara-negara tetangga, yaitu:

# MY -> Malaysia,
# SG -> Singapore,
# TH -> Thailand,
# VN -> Vietnam.
# Ambillah kelima negara melalui variabel data frame df_covid_denormalized dengan menerapkan memilih kolomnya. Di sini kamu dapat menggunakan list comprehension untuk mempersingkat perulangan. Hasil proses komparasi kolom geo_id data frame df_covid_denormalized dengan list asean_country_id yang berisi ["ID", "MY", "SG", "TH", "VN"] di konversikan ke numpy array menggunakan .to_numpy. Hasil ini ditempatkan ke  variabel filter_list.

# Setelah itu buat variabel filter_array yang berisi stack filter_list berdasarkan kolom mengunakan np.column_stack, jumlahkan berdasarkan axis=1 dan set keyword argument lainnya yaitu dtypes="bool".

# Pertanyaan yang dapat kamu jawab yaitu kenapa bisa digunakan .sum dengan keyword argument axis=1 dan dtypes="bool" pada langkah ini?

# Langkah terakhir kamu dapat mengambil subset data frame df_covid_denormalized dengan nama df_covid_denormalized_asean menggunakan filter_array.