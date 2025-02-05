#Kode sebelumnya
import pandas as pd
import datetime

dataset_retail = pd.read_csv('https://storage.googleapis.com/dqlab-dataset/data_retail.csv', delimiter=';')

dataset_retail['First_Transaction'] = pd.to_datetime(pd.to_datetime(dataset_retail['First_Transaction']/1000, unit='s', origin='1970-01-01')).dt.date
dataset_retail['Last_Transaction'] = pd.to_datetime(pd.to_datetime(dataset_retail['Last_Transaction']/1000, unit='s', origin='1970-01-01')).dt.date
dataset_retail.sort_values('First_Transaction', inplace=True)

daily_avg_trx = dataset_retail.groupby('First_Transaction').mean()['Average_Transaction_Amount'].reset_index()

import matplotlib.pyplot as plt
fig, axs = plt.subplots(20, 1, figsize=(8,50))

#Menampilkan Partial Autocorrelation Plots
from statsmodels.graphics.tsaplots import plot_pacf

#Plot dengan lags 1 hingga 20
for i, ax in enumerate(axs):
	plot_pacf(daily_avg_trx['Average_Transaction_Amount'], lags=i+1, ax=ax)
	ax.set_title('Partial Autocorrelation with lag = %d' % (i+1,))

plt.tight_layout()
plt.show()

#Tugas
# Aku kemudian memvariasikan juga besarnya lags pada partial autocorrelation dari 1 hingga 20. Di sini aku ingin melihat hingga lags keberapakah tidak akan ada lagi perubahan partial autocorrelationnya.

# Penjelasan
# Dari hasil pada grafik PACF, dapat dilihat bahwa setelah urutan atau lags ke 10, korelasi PACF sudah tidak lagi signifikan.
# Maka, untuk model kita akan gunakan lags 10.