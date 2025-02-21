#3. Meringkas data yang akan digunakan ke dalam datagabungan
datagabungan = data.frame(bulan = data_gabungan$Bulan,
tahun = data_gabungan$Tahun,
kunjungan_dokter = data_gabungan$tingkat.kunjungan.ke.dokter.gigi,
penjualan_sereal = data_gabungan$penjualan.sereal)
datagabungan

#Menghitung summary datagabungan
summary(datagabungan)

# Teori
# Untuk memperingkas data yang digunakan, aku dapat mengeliminasi variabel lain yang tidak dibutuhkan, sehingga dataset yang aku miliki hanya berupa bulan, tahun, kunjungan dokter, dan penjualan sereal yang aku tempatkan ke dalam variabel datagabungan.

