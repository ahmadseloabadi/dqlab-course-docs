import pandas as pd
# Load data https://storage.googleapis.com/dqlab-dataset/LO4/global_air_quality_4000rows.csv
gaq = pd.read_csv('https://storage.googleapis.com/dqlab-dataset/LO4/global_air_quality_4000rows.csv')
# Create variabel pollutant 
pollutant = gaq[['country','city','pollutant','value']].pivot_table(index=['country','city'],columns='pollutant').fillna(0)
print('Data pollutant (5 teratas):\n', pollutant.head())
# Group berdasarkan country dan terapkan aggregasi first
pollutant_first = pollutant.groupby('country').first()
print('Item pertama pollutant (5 teratas):\n', pollutant_first.head())
# Group berdasarkan country dan terapkan aggregasi last
pollutant_last = pollutant.groupby('country').last()
print('Item terakhir pollutant (5 teratas):\n', pollutant_last.head())


# langkah
# [5] Group berdasarkan country dan terapkan aggregasi min, method .min() setelah penerapan method .groupby() digunakan untuk memunculkan nilai terkecil dari tiap kelompok.

# [6] Group berdasarkan country dan terapkan aggregasi max, method .max() setelah penerapan method .groupby() digunakan untuk memunculkan nilai terbesar dari tiap kelompok.

# Tugas Praktik:

# Gunakanlah method .first() dan .last() untuk aggregasi setelah penerapan .groupby() yang masing-masingnya bertujuan untuk memunculkan item pertama dan item terakhir dari tiap kelompok.

