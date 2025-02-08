import numpy as np
import pandas as pd
pd.set_option("display.max_columns", None)

import ssl
ssl._create_default_https_context = ssl._create_unverified_context

covid_url = "https://storage.googleapis.com/dqlab-dataset/covid19_worldwide_2020.json"
df_covid_worldwide = pd.read_json(covid_url)
df_covid_worldwide = df_covid_worldwide.set_index("date").sort_index()

print("Jumlah missing value tiap kolom:")
print(df_covid_worldwide.isna().sum())

df_covid_worldwide.dropna(inplace=True)

print("\nJumlah missing value tiap kolom setelah didrop:")
print(df_covid_worldwide.isna().sum())


# Tugas
# Hasil sebelumnya dengan ada kolom dengan missing value, cobalah inspeksi seluruh kolom apakah ada yang memiliki missing value!

# Wah, ternyata kolom geo_id memiliki missing value sebanyak 275 butir data dari total 61900 baris data yang dimiliki. Kolom geo_id ini akan digabungkan dengan satu dataset lagi sehingga dapat ditentukan negaranya melalui nama negaranya bukan dengan geo_id negara.

# Buanglah baris data yang memiliki missing value ini. 