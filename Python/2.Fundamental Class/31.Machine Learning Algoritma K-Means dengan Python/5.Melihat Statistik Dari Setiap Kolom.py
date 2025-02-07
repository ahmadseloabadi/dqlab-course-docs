#Import library pandas
import pandas as pd

#Membaca data
data = pd.read_csv("https://storage.googleapis.com/dqlab-dataset/RFM_customer.csv", encoding='utf8')

#Untuk melihat statistik dari setiap kolom
print(data.describe())