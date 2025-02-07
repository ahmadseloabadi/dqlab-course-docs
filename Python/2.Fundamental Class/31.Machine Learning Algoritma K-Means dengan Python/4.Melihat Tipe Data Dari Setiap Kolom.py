#Import library pandas
import pandas as pd

#Membaca data
data = pd.read_csv("https://storage.googleapis.com/dqlab-dataset/RFM_customer.csv", encoding='utf8')

#Melihat dimensi dataframe
print(data.shape)

# melihat tipe data dari setiap kolom
data.info()