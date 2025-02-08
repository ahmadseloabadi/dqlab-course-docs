import numpy as np
import pandas as pd
pd.set_option("display.max_columns", None)

import ssl
ssl._create_default_https_context = ssl._create_unverified_context

countries_url = "https://storage.googleapis.com/dqlab-dataset/country_details.json "
df_countries = pd.read_json(countries_url)
print(df_countries.head())

# Tugas
# Bacalah dataset countries melalui alamat url https://storage.googleapis.com/dqlab-dataset/country_details.json yang ditempatkan ke variabel df_countries. Lalu inspeksilah dataset dengan mencetak lima data teratas dari dataframe countries (df_countries).

# Apa yang dapat kamu simpulkan dari kedua dataset ini?