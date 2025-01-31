import datetime
import pandas as pd
import matplotlib.pyplot as plt
dataset = pd.read_csv('https://storage.googleapis.com/dqlab-dataset/retail_raw_reduced.csv')
dataset['order_month'] = dataset['order_date'].apply(lambda x: datetime.datetime.strptime(x, "%Y-%m-%d").strftime('%Y-%m'))
dataset['gmv'] = dataset['item_price']*dataset['quantity']
dataset_dki_q4 = dataset[(dataset['province']=='DKI Jakarta') & (dataset['order_month'] >= '2019-10')]

gmv_per_city_dki_q4 = dataset_dki_q4.groupby('city')['gmv'].sum().reset_index()
plt.figure(figsize=(6,6))
plt.pie(gmv_per_city_dki_q4['gmv'], labels=gmv_per_city_dki_q4['city'],autopct='%1.2f%%')
plt.title('GMV Contribution Per City - DKI Jakarta in Q4 2019', loc='center',pad=30,fontsize=15, color='blue')
plt.show()

# Teori

# Misalnya gmv_per_city_dki_q4, masukkan datanya ke function plt.pie().

# Beberapa parameter yang bisa dimodifikasi:

# labels: array yang berisikan label/tulisan yang ditunjukkan untuk masing-masing bagian pie.
# colors: array yang berisikan warna untuk masing-masing bagian pie.
# autopct: format untuk nilai persentase yang ditampilkan, bisa berupa string atau function.
# shadow: jika diisi True, maka ada bayangan untuk pie chart-nya. Default-nya adalah False.
# radius: jari-jari dari pie-chart.