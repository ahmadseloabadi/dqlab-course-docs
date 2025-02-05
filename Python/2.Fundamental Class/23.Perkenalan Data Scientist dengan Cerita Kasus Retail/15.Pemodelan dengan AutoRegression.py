#Kode sebelumnya
import pandas as pd
import datetime

dataset_retail = pd.read_csv('https://storage.googleapis.com/dqlab-dataset/data_retail.csv', delimiter=';')

dataset_retail['First_Transaction'] = pd.to_datetime(pd.to_datetime(dataset_retail['First_Transaction']/1000, unit='s', origin='1970-01-01')).dt.date
dataset_retail['Last_Transaction'] = pd.to_datetime(pd.to_datetime(dataset_retail['Last_Transaction']/1000, unit='s', origin='1970-01-01')).dt.date
dataset_retail.sort_values('First_Transaction', inplace=True)

daily_avg_trx = dataset_retail.groupby('First_Transaction').mean()['Average_Transaction_Amount'].reset_index()

#Pembagian dataset atas training dan testing
train_data = daily_avg_trx['Average_Transaction_Amount'][:len(daily_avg_trx)-10]
test_data = daily_avg_trx['Average_Transaction_Amount'][len(daily_avg_trx)-10:]

print('Ukuran data training:', train_data.shape)
print('Ukuran data testing :', test_data.shape)

#Model auto regression
from statsmodels.tsa.ar_model import AutoReg

#Fit data ke dalam mode
ar_model = AutoReg(train_data, lags=10).fit()
print(ar_model.summary())

# Tugas
# Langkah selanjutnya adalah melatih model (model training). Tapi, sebelumnya aku perlu membagi data menjadi data pelatihan (data training) dan data pengujian (data testing). Kemudian aku modelkan dengan model Auto Regression (AR).

