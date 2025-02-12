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

df_covid_denormalized_august = df_covid_denormalized.loc["2020-08"].groupby("country_name").sum()

df_covid_denormalized_august["fatality_ratio"] = df_covid_denormalized_august["deaths"]/df_covid_denormalized_august["confirmed_cases"]

df_top_20_fatality_rate_on_august = df_covid_denormalized_august.sort_values(by="fatality_ratio", ascending=False).head(20)
print(df_top_20_fatality_rate_on_august["fatality_ratio"])

# Tugas
# ita dapat mengakses fatality rate yang terjadi pada bulan Agustus saja dan kemudian 20 negara dengan fatality rate tertinggi akan diurutkan. Untuk itu bagaimanakah caranya?

# Sebelum dihitung fatality_rate nya kita ambil dahulu kasus pada bulan Agustus 2020 menggunakan .loc. Setelah itu kamu dapat melakukan pengelompokkan menggunakan .groupby berdasarkan negara (kolom country_name) dan menghitung jumlahnya selama bulan Agustus 2020 ini menggunakan .sum.
# Buatlah kolom baru fatality_ratio untuk mengitung rasio kefatalan di bulan Agustus 2020 seperti yang telah dikerjakan sebelumnya, dan jangan lupa urutkan 20 negara dengan fatality ratio tertinggi.