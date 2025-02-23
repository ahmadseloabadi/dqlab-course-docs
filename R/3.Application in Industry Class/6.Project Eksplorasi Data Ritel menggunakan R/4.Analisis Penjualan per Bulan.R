#Lalu ambillah data dengan jenis transaksi adalah Penjualan
data_penjualan = data[data$Jenis.Transaksi=="Penjualan",]

#Lakukan fungsi aggregasi data untuk mendapatkan penjualan perbulan
penjualan_perbulan = aggregate(x=data_penjualan$Jumlah, 
                     by = list(Bulan_Tahun = data_penjualan$Bulan_Tahun),
                     FUN = sum)

#Keluarkan bar plot dari penjualan perbulan
barplot(penjualan_perbulan$x,
        names.arg =penjualan_perbulan$Bulan_Tahun,
        xlab="Month",
        ylab="Penjualan",
        col="blue",
        main="Penjualan perbulan",
        border="red")


# Teori
# Setelah memahami betul isi dari data yang dimiliki, seperti variabel-variabel yang terdapat di dalam data serta tipe dari masing-masing variabel,  selanjutnya aku ingin memperoleh informasi lebih jauh yang tidak dapat dilihat secara langsung di dalam data. Aku kembali melirik email yang Kroma kirimkan dan melihat bahwa dalam program mitra reward ini, Kroma memerlukan beberapa data untuk dianalisis lebih lanjut.

 

# Data pertama yang harus aku sediakan adalah data mengenai penjualan dalam bulan April hingga Juli karena Kroma ingin mengetahui seperti apakah tingkat penjulan tiap bulannya. Untuk itu aku perlu melakukan langkah-langkah berikut

# melalui penggunaan function aggregate() dapat ditampilkan penjualan dalam 3 bulan ini (April hingga Juli).
# Visualisasikan data tersebut dengan menggunakan chart yang sesuai.

# Penjelasan
# Hasil Analisis Penjualan Mitra Toserba Xera Bulan April - Juni 2022
# Akhirnya, selesai juga aku mengerjakan analisis data eksplorasi seperti yang diminta oleh Kroma. Aku mengumpulkan beberapa informasi yang diperoleh terkait performa Mitra Toserba Xera. Berikut adalah report performance yang aku hasilkan dan yang aku laporkan pada Kroma: 

# Penjualan Mitra Toserba Xera pada bulan April - Juni 2020 semakin menurun. Hal ini terlihat dari bar plot jumlah penjualan barang perbulan. Penjualan tertinggi yang dimiliki oleh Mitra Toserba Xera berada pada bulan April 2020 sejumlah 1753 barang terjual. Namun pada bulan Juni 2020, Mitra Toserba Xera hanya menjual 170 produk.