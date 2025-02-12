import pandas as pd

# import dataset  
df = pd.read_csv("https://storage.googleapis.com/dqlab-dataset/customer_segments.txt", sep="\t")  
  
# menampilkan data  
print(df.head())

# Tugas
# Membaca Data Pelanggan
# Langkah pertama yang perlu di lakukan adalah membaca data tersebut yang semula adalah textfile menjadi pandas dataframe.

# Tugas:

# Kamu akan menggunakan fungsi read_csv yang ada di pandas untuk memasukkan data dan kemudian menampilkan 5 data teratas.

# Jika kamu melakukannya dengan benar maka akan mendapatkan hasil sebagai berikut:

# Dataset yang ditampilkan dapat diakses pada link berikut: https://storage.googleapis.com/dqlab-dataset/customer_segments.txt