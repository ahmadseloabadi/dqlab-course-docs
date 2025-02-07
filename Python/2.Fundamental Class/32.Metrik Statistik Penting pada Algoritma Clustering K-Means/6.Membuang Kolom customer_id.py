#Menghapus kolom customer_id
import pandas as pd
data = pd.read_csv("https://storage.googleapis.com/dqlab-dataset/RFM_customer.csv", encoding='utf8')
RFM_km = data.drop(['customer_id'], axis=1)
print(RFM_km.head())