#Analisis hubungan antara Harga Barang dengan Jumlah Transaksi
#Memilih data dengan jenis transaksi Penjualan
data <- data[(data$Jenis.Transaksi) == "Penjualan",]

#Mengubah data harga menjadi Integer
data$Harga <- as.integer(data$Harga)

#Mengubah nilai NA menjadi 0
data$Harga[is.na(data$Harga)] <- 0

#Menghitung jumlah transaksi berdasarkan rentang harga
data_transaksi <- aggregate(
  x=data$No.Transaksi, 
  by = list(Harga = data$Harga), 
  FUN = length)

#Mengurutkan data dari harga termahal
data_transaksi = data_transaksi[order(-data_transaksi$Harga), ]

#Visualisasi data hubungan harga barang dengan jumlah transaksi
#Sebelum menggunakan perintah hist() kamu perlu memecah data transaksi diatas menjadi bentuk data vektor sebagai berikut
data_transaksi_freq = as.vector(rep(data_transaksi$Harga, data_transaksi$x))

#Setelah mendapatkan data diatas, kita dapat mengeluarkan histogram dari tabel diatas dengan menggunakan perintah hist()
hist(data_transaksi_freq,
     main="Hubungan antara harga barang dengan transaksi",
     xlab="Rentang harga barang",
     col="green"
)

# Teori
# Setiap selesai melakukan suatu tahapan, aku kembali membuka file yang dikirimkan oleh Kroma untuk memastikan bahwa aku sudah mengerjakan analisis yang dibutuhkan oleh Kroma. Saat ini aku ingin melihat apakah terdapat hubungan antara harga barang dengan jumlah transaksi, data selanjutnya yang akan dibandingkan nilainya adalah harga barang dengan jumlah transaksi. Kroma ingin mengetahui apakah terdapat perbedaan antara jumlah transaksi dengan harga barang.

 

# Dan langkah yang akan aku tempuh adalah dengan melakukan : 

# Dengan menggunakan function aggregate(), tampilkan data jumlah transaksi dengan harga barang yang dibeli.
# Visualisasikan data tersebut dengan menggunakan chart yang sesuai.

# Hasil Analisis Hubungan Antara Rentang Harga Barang dan Jumlah Transaksi
# Aku juga menggunakan bar plot untuk melihat bagaimana hubungan antara rentang harga barang dengan jumlah transaksi. Dari hasil yang kudapatkan, aku dapat mengetahui bahwa barang yang berada pada rentang harga Rp 10.000-Rp15.000 lebih banyak terjual dibanding rentang harga lainnya. Setelah itu, barang dengan harga kurang dari Rp 5000 menempati posisi kedua. Aku dapat mengambil kesimpulan bahwa barang yang berada di rentang harga ini merupakan barang yang paling laku.