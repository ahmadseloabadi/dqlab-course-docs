import pandas as pd
import datetime

dataset = pd.read_csv('https://storage.googleapis.com/dqlab-dataset/retail_raw_reduced.csv')
dataset['order_month'] = dataset['order_date'].apply(lambda x: datetime.datetime.strptime(x, "%Y-%m-%d").strftime('%Y-%m'))

dataset['gmv']=dataset['item_price']*dataset['quantity']
print('Ukuran dataset: %d baris dan %d kolom\n'%dataset.shape)
print('Lima data teratas:')
print(dataset.head())

# Teori
# GMV (Gross Merchandise Value) adalah total nilai barang dagangan yang terjual dalam suatu periode sebelum dikurangi dengan diskon, pajak, atau biaya lainnya.