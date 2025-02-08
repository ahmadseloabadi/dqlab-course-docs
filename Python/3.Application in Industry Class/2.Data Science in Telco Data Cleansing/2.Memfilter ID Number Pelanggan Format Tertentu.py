import pandas as pd
df_load = pd.read_csv('https://storage.googleapis.com/dqlab-dataset/dqlab_telco.csv')

df_load['valid_id'] = df_load['customerID'].astype(str).str.match(r'(45\d{9,10})')
df_load = (df_load[df_load['valid_id'] == True]).drop('valid_id', axis = 1)
print('Hasil jumlah ID Customer yang terfilter adalah', df_load['customerID'].count())

# Tugas
# Mencari format ID Number (Phone Number) Pelanggan customerID yang benar, dengan kriteria:

# Panjang karakter adalah 11-12.
# Terdiri dari angka Saja, tidak diperbolehkan ada karakter selain angka
# Diawali dengan angka 45 2 digit pertama.
 
# Gunakan fungsi count() untuk menghitung banyaknya rows Customer ID, anda juga bisa menggunakan str.match() & regex untuk mencocokan dengan kriteria diatas. Jangan lupa gunakan astype() untuk merubah tipe datanya yang semula numeric

# Notes : Buat kolom bantuan baru dengan nama `valid_id`

# Hasil yang diharapkan adalah sebagai berikut:

# Hasil jumlah ID Customer yang terfilter adalah 7006