#Kode program sebelumnya
import pandas as pd
pd.set_option('display.max_column', 20)

df = pd.read_excel('https://storage.googleapis.com/dqlab-dataset/cth_churn_analysis_train.xlsx')
df.drop('ID_Customer', axis=1, inplace=True)

y = df.pop('churn').to_list()
y = [1 if label == 'Yes' else 0 for label in y]

#membuang kolom 'harga_per_bulan'
df.drop('harga_per_bulan', axis=1, inplace=True)

#membuang kolom 'jumlah_harga_langganan'
df.drop('jumlah_harga_langganan', axis=1, inplace=True)
df.info()

