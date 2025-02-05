#Kode sebelumnya
import pandas as pd
import datetime

dataset_retail = pd.read_csv('https://storage.googleapis.com/dqlab-dataset/data_retail.csv', delimiter=';')

dataset_retail['First_Transaction'] = pd.to_datetime(pd.to_datetime(dataset_retail['First_Transaction']/1000, unit='s', origin='1970-01-01')).dt.date
dataset_retail['Last_Transaction'] = pd.to_datetime(pd.to_datetime(dataset_retail['Last_Transaction']/1000, unit='s', origin='1970-01-01')).dt.date
dataset_retail.sort_values('First_Transaction', inplace=True)

daily_avg_trx = dataset_retail.groupby('First_Transaction').mean()['Average_Transaction_Amount'].reset_index()

import matplotlib.pyplot as plt
fig, axs = plt.subplots(2, 1, figsize=(8,8))

#Menampilkan Autocorrelation Plots
from statsmodels.graphics.tsaplots import plot_acf
plot_acf(daily_avg_trx['Average_Transaction_Amount'], ax=axs[0])

#Menampilkan Partial Autocorrelation Plots
from statsmodels.graphics.tsaplots import plot_pacf
plot_pacf(daily_avg_trx['Average_Transaction_Amount'], ax=axs[1])

plt.tight_layout()
plt.show()

