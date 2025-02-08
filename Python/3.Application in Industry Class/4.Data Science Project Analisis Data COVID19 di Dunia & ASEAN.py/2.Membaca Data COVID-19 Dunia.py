import numpy as np
import pandas as pd
pd.set_option("display.max_columns", None)

import ssl
ssl._create_default_https_context = ssl._create_unverified_context

covid_url = 'https://storage.googleapis.com/dqlab-dataset/covid19_worldwide_2020.json'
df_covid_worldwide = pd.read_json(covid_url)

print("Ukuran dataset: %d kolom dan %d baris.\n" % df_covid_worldwide.shape)
print("Lima data teratas:\n", df_covid_worldwide.head())
print("\nLima data terbawah:\n", df_covid_worldwide.tail())

# Tugas
# Gunakan method .read_json() pada library pandas yang sidah diimport tadi. Alamat url file yang akan diimport ini ada di: https://storage.googleapis.com/dqlab-dataset/covid19_worldwide_2020.json.

# Kemudian, ceklah ukuran dataset, 5 data teratas, dan 5 data terbawah.