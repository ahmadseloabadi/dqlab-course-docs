import pandas as pd
raw_data = pd.read_csv("https://storage.googleapis.com/dqlab-dataset/dataset_statistic.csv", sep=';')

# Cari nilai rentang dari kolom 'Pendapatan'
print (raw_data['Pendapatan'].max() - raw_data['Pendapatan'].min())

# Teori
# Rentang (range)
# Rentang adalah jarak antara nilai maksimum dengan nilai minimum. Semakin besar jarang antara nilai maksimum dan minimum semakin besar pula sebaran datanya. 