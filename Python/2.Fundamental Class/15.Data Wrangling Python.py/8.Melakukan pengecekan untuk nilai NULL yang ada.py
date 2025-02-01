import pandas as pd

# csv_data = pd.read_csv("https://storage.googleapis.com/dqlab-dataset/shopping_data.csv")

# print(csv_data.isnull().values.any()) 
#Note : kode diatas data yang digunakan merupakan data yang lengkap, maka dari itu output yang dihasilkan False. 

# Coba Sekarang ganti dengan dataset yang memang terdapat data yang kosong.
csv_data = pd.read_csv("https://storage.googleapis.com/dqlab-dataset/shopping_data_missingvalue.csv")

print(csv_data.isnull().values.any())
# Teori
# Dengan menggunakan fungsi pandas, kita tidak perlu melihat satu persatu baris data untuk mengetahui apakah ada nilai kosong atau NULL/NAN pada suatu dataset. Bayangkan jika kita memilki 1000 baris data. Apakah kita harus melihat semua baris data tersebut? Tentu saja tidak. Maka dari itu di pandas disediakan fungsi untuk mengecek apakah ada data yang kosong.
