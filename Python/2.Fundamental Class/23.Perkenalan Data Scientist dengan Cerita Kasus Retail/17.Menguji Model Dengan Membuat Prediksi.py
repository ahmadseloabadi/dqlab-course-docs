#Kode sebelumnya
import pandas as pd
import datetime

dataset_retail = pd.read_csv('https://storage.googleapis.com/dqlab-dataset/data_retail.csv', delimiter=';')

dataset_retail['First_Transaction'] = pd.to_datetime(pd.to_datetime(dataset_retail['First_Transaction']/1000, unit='s', origin='1970-01-01')).dt.date
dataset_retail['Last_Transaction'] = pd.to_datetime(pd.to_datetime(dataset_retail['Last_Transaction']/1000, unit='s', origin='1970-01-01')).dt.date
dataset_retail.sort_values('First_Transaction', inplace=True)

daily_avg_trx = dataset_retail.groupby('First_Transaction').mean()['Average_Transaction_Amount'].reset_index()

train_data = daily_avg_trx['Average_Transaction_Amount'][:len(daily_avg_trx)-10]
test_data = daily_avg_trx['Average_Transaction_Amount'][len(daily_avg_trx)-10:]

from statsmodels.tsa.ar_model import AutoReg

ar_model = AutoReg(train_data, lags=10).fit()

#Membuat prediksi dengan model
pred = ar_model.predict(start=len(train_data), end=(len(train_data) + len(test_data) - 1), dynamic=False).rename('AR Predictions')

#Plot
import matplotlib.pyplot as plt
pred.plot(legend=True)
test_data.plot(legend=True)
plt.xlabel('Urutan data First_Transaction ke-')
plt.tight_layout()
plt.show()

# Penjelasan
# Aku menemukan sesuatu yang tidak terduga, ternyata hasil prediksi dengan AR tidak sesuai dengan data sebenarnya. Karena jika hasilnya sesuai, kedua garis harusnya memiliki bentuk yang kurang lebih sama.

# “Hemm…kira-kira kenapa hasilnya seperti ini ya? Mungkin aku harus mempelajari lebih dalam tentang model AR di modul selanjutnya,” gumamku. Kalau seperti ini, aku harus segera memberikan hasil data kepada Andra.

# Di luar dugaan, aku melihat Andra tersenyum puas melihat hasil prediksi yang kuberikan, “Oke, datanya bisa langsung diberikan ke Kroma ya. Selamat Sunyi, sekarang kamu bisa menguasai Market Basket Analysis dan Time Series Analysis,” ujar Andra kepadaku. 

# Yeay! Aku senang sekali, karena hasil prediksiku memiliki peran yang penting. Selain itu, aku sudah bisa menguasai keterampilan baru hehehe..