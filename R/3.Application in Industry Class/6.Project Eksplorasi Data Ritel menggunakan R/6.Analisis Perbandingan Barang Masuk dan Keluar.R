#Perbandingan barang masuk dan keluar perbulan
aggregate(
  x=data$Jumlah, 
  by = list(Bulan = data$Bulan_Tahun, Jenis_Transaksi = data$Jenis.Transaksi), 
  FUN = sum)

#Visualisasikan data dengan chart yang sesuai
#Buat tabel transaksi menggunakan fungsi aggregate
data_transaksi = aggregate(
  x=data$Jumlah, 
  by = list(Bulan = data$Bulan_Tahun, Jenis_Transaksi = data$Jenis.Transaksi), 
  FUN = sum)

#Keluarkan data transaksi penjualan dan stok masuk
data_penjualan <- data_transaksi[(data_transaksi$Jenis_Transaksi) == "Penjualan",]
data_stok_masuk <- data_transaksi[(data_transaksi$Jenis_Transaksi) == "Stok Masuk",]

#Gabungkan kedua data diatas menggunakan fungsi merge dengan left join
data_gabungan = merge(data_stok_masuk,data_penjualan,by='Bulan', all.x=TRUE)
data_gabungan = data.frame(Bulan = data_gabungan$Bulan,
                           Stok_Masuk = data_gabungan$x.x,
                           Penjualan = data_gabungan$x.y)

#Periksa apakah terdapat NA data. Jika terdapat NA data, kamu dapat menggantinya dengan 0
data_gabungan$Penjualan[is.na(data_gabungan$Penjualan)] <- 0

#Ubah format data gabungan dengan melakukan perintah transpose. Lalu ubah nama kolom menggunakan bulan
data_gabung = t(as.matrix(data_gabungan[-1]))
colnames(data_gabung) = data_gabungan$Bulan

#Keluarkan bar plot dengan multiple kategori untuk membandingkan stok masuk dengan penjualan. Lalu keluarkan legend dari barplot tersebut.
barplot(data_gabung,
        main='Perbandingan Penjualan dengan Stok Masuk',
        ylab='Jumlah Barang', 
        xlab='Bulan',
        beside = TRUE, 
        col=c("red","blue"))
legend('topright',fill=c("red","blue"),legend=c('Stok Masuk','Penjualan'))

# Teori
# Data berikutnya yang harus aku sediakan adalah data mengenai perbandingan barang masuk dan keluar karena Kroma ingin mengetahui apakah stock yang masuk dengan barang yang terjual seimbang.

# Langkah yang perlu dilakukan adalah: 

# Dengan menggunakan function aggregate(), tampilkan perbandingan stok masuk dan penjualan per bulan
# Visualisasikan data tersebut dengan menggunakan chart yang sesuai.

# Penjelasan
# Nantinya ketika aku sudah melakukan analisis perbandingan barang keluar dan masuk, informasi yang bisa diperoleh adalah Stok barang masuk setiap bulan berjumlah diantara 4300-4500, sementara jumlah penjualan berkisar di 1400-1700 untuk bulan April dan Mei 2020. Namun penjualan di bulan Juni cukup rendah dengan jumlah sekitar 170 penjualan.
# Hasil Analisis Stok Barang Masuk Dengan Penjualan di Mitra Toserba Xera
# Tadi, aku juga melakukan analisis untuk membandingkan stok barang masuk dengan penjualan di Mitra Toserba Xera. Berdasarkan analisis yang kulakukan, dapat diambil kesimpulan bahwa stok persediaan barang di Mitra Toserba Xera masih cukup banyak mengingat secara rata-rata terdapat sekitar 4000 barang yang masuk kedalam Mitra Toserba Xera sementara toko ini hanya menjual sekitar 1400-1700 barang di bulan April dan Mei.

