#Import library pandas
import pandas as pd

#Membaca data
data = pd.read_csv("https://storage.googleapis.com/dqlab-dataset/RFM_customer.csv", encoding='utf8')

#Mengecek apakah ada data null
print(data.isnull().any().any())

#Menghapus kolom customer_id
RFM_km = data.drop(["customer_id"], axis=1)
print(RFM_km.head())