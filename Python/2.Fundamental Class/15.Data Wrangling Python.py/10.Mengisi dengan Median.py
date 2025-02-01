import pandas as pd

csv_data = pd.read_csv("https://storage.googleapis.com/dqlab-dataset/shopping_data_missingvalue.csv")
print("Dataset yang masih terdapat nilai kosong ! :")
print(csv_data.head(10))
# mean(), gunakan kode di bawah ini untuk mengisi nilai yang kosong menggunakan fungsi fillna() 
csv_data=csv_data.fillna(csv_data.median())
print("Dataset yang sudah diproses Handling Missing Values dengan Median :")
print(csv_data.head(10))
# Teori
# Berbeda dengan mean pada sesi sebelumnya, median digunakan untuk data-data yang memiliki sifat outlier yang kuat. Kenapa median dipilih? Median merupakan nilai tengah yang artinya bukan hasil dari perhitungan yang melibatkan data outlier. Pada beberapa kasus, data outlier dianggap mengganggu dan sering dianggap noisy karena bisa mempengaruhi distribusi kelas dan mengganggu analisa pada klasterisasi (clustering).