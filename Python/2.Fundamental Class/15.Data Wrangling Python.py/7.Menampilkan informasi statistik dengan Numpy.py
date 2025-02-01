import pandas as pd

csv_data = pd.read_csv("https://storage.googleapis.com/dqlab-dataset/shopping_data.csv")

# print(csv_data.describe(include="all")) #Note : Banyak nilai NaN yang tampil. Hal itu karena pada dataset ada format data string yang akhirnya memunculkan format NaN.

# Untuk meminimalisir hal tersebut dan memfilter hanya data numerical saja, digunakan  exclude=["O"], dimana fungsi itu akan mengabaikan data yang non-numerical untuk diproses
print(csv_data.describe(exclude=["O"]))

# Teori
# Mengetahui informasi statistik pada suatu data sangat penting. Mulai dari distribusi data, nilai max atau min, hingga standar deviasi dari suatu dataset. Jika datanya berjumlah dibawah 10 mungkin masih dikerjakan secara manual. Namun, bayangkan jika datanya sudah mencapai ratusan bahkan ribuan. Tidak mungkin pastinya untuk dilakukan secara manual. Maka dari itu pentingnya fungsi describe() pada pandas. Fungsi describe() ini memungkinkan untuk mengetahui informasi statistik dari suatu dataset secara cepat.