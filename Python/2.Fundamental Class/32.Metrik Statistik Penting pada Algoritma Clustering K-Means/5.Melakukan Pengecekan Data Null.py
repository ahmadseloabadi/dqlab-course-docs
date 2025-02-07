#Mengecek apakah ada data null
import pandas as pd
data = pd.read_csv("https://storage.googleapis.com/dqlab-dataset/RFM_customer.csv", encoding='utf8')
print(data.isnull().any().any())