#Load data dan simpan ke dalam variable bernama ‘data’
data <- read.csv("https://storage.googleapis.com/dqlab-dataset/transaksi_stok_dan_penjualan.tsv", header = TRUE, sep = "\t")

#Tampilkan 5 data teratas 
head(data,5)

#Tampilkan 5 data terbawah 
tail(data,5)

#Tampilkan informasi mengenai struktur dari data
str(data)

# Teori
# Segera setelah aku mendapatkan file berisi data dari Kroma, aku langsung mengecek file tersebut dan mendapati bahwa data yang akan digunakan berformat TSV (Tab Separated Value). Untuk project kali ini, aku memutuskan untuk menggunakan bahasa pemrograman R.

# Sebelum melakukan analisa lebih lanjut, hal pertama yang harus aku lakukan tentu saja melakukan load data ke dalam workspace dan memperoleh gambaran besar dari data yang akan diolah.

# Instruksi:

# Load dataset ke dalam workspace dengan menggunakan function read.csv() dan simpan ke dalam variable bernama data
# Tampilkan 5 data teratas dengan menggunakan function head()
# Tampilkan 5 data terbawah dengan menggunakan function tail()
# Tampilkan informasi mengenai struktur data dengan menggunakan function str()
