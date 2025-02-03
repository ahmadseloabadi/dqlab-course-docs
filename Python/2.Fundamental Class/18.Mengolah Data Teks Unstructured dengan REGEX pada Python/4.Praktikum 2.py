#Import library yang dibutuhkan
import pandas as pd

#Baca file dqlabregex.tsv
dqlabregex = pd.read_csv("https://storage.googleapis.com/dqlab-dataset/dqlabregex.tsv", sep = '\t')

#Buat kolom baru char_nonnumerik untuk mengetahui jumlah_member non numerik
dqlabregex["char_nonnumerik"] = dqlabregex["jumlah_member"].str.contains('[^0-9]')

#Tampilkan hasilnya
print(dqlabregex[["jumlah_member", "char_nonnumerik"]])


# Tugas
# Pada kolom jumlah_member di tabel dqlabregex, jumlah menunjukkan kuantitas yang artinya hanya angka saja (numerik) yang boleh menjadi isi rownya (record data). Namun pada tabel tersebut terdapat kesalahan pengetikan / penginputan data sehingga terdapat karakter non-numerik pada kolom jumlah_member.

# Kali ini aku meminta Sunyi untuk memeriksa dan menampilkan kesalahan input data pada kolom tersebut. "Nyi, coba kamu buat sebuah sintaks yang menampilkan kesalahan penulisan angka pada kolom jumlah_member lalu beri nama dengan char_nonnumerik. Tampilkan kolom jumlah_member dan char_nonnumerik untuk mengetahui hasilnya." Sunyi mengangguk dan kembali mengetikkan kode nya. 

# # penjelasan
# Terilihat huruf I pada baris kedua, huruf S pada baris ketiga, huruf O pada baris keempat dan huruf O pada baris ke 5. Sehingga pada urutan row yang disebutkan akan bernilai True (benar bahwa mengandung karakter non-numerik).

