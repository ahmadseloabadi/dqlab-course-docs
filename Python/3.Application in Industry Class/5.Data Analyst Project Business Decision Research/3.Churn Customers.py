import pandas as pd
df = pd.read_csv('https://storage.googleapis.com/dqlab-dataset/data_retail.csv', sep=';')
df['First_Transaction'] = pd.to_datetime(df['First_Transaction']/1000, unit='s', origin='1970-01-01')
df['Last_Transaction'] = pd.to_datetime(df['Last_Transaction']/1000, unit='s', origin='1970-01-01')

# Pengecekan transaksaksi terakhir dalam dataset
print(max(df['Last_Transaction']))

# Klasifikasikan customer yang berstatus churn atau tidak dengan boolean
df.loc[df['Last_Transaction']<='2018-08-01', 'is_churn'] = True 
df.loc[df['Last_Transaction']>'2018-08-01', 'is_churn'] = False 

print('Lima data teratas:')
print(df.head())

print('\nInfo dataset:')
print(df.info())

# Tugas
# Untuk menentukan churn customers sesuai definisi yang telah diberikan, carilah

# transaksi paling terakhir kapan dilakukan
# klasifikasikanlah mana customer yang berstatus churn dan mana yang tidak.
# Setelah itu cetak lima data teratas dan informasi dataset.