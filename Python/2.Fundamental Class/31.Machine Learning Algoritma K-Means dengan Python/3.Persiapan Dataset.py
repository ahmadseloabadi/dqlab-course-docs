#Import library pandas
import pandas as pd

#Membaca data
data = pd.read_csv("https://storage.googleapis.com/dqlab-dataset/RFM_customer.csv", encoding='utf8')

#Menampilkan 10 baris teratas
print(data.head(10))

# Penjelasan
# Berdasarkan data di atas, aku dan Senja dapat melihat bahwa setiap baris menyimpan data customer_id, frequency, recency, dan monetary. Sebagai contoh, customer_id 12346 hanya pernah bertransaksi 1 kali dan transaksi tersebut terjadi 48 hari yang lalu dengan total transaksi sebesar 27.904.840.000.

