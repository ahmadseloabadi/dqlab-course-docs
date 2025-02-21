library (dplyr)
data_delayed_effect = data.frame(
month = data_gabungan$Bulan,
year = data_gabungan$Tahun,
kunjungan_dokter = data_gabungan$tingkat.kunjungan.ke.dokter.gigi,
penjualan_permen = data_gabungan$penjualan.permen,
penjualan_permen_1 = lag(data_gabungan$penjualan.permen),
penjualan_permen_2 = lag(data_gabungan$penjualan.permen,2),
penjualan_permen_3 = lag(data_gabungan$penjualan.permen,3),
penjualan_permen_4 = lag(data_gabungan$penjualan.permen,4),
penjualan_permen_5 = lag(data_gabungan$penjualan.permen,5),
penjualan_permen_6 = lag(data_gabungan$penjualan.permen,6)
)
data_delayed_effect


# Teori
# Aku kembali ke depan laptopku lagi dan hal pertama yang kupikirkan adalah mencari berapa lama waktu yang dibutuhkan oleh orang yang memakan permen untuk mengunjungi rumah sakit karena mengalami sakit gigi. Peristiwa ini sering disebut dengan efek keterlambatan atau delay effect.

# Aku menggunakan visualisasi data untuk menentukan delay periodnya. Aku berandai-andai, misal aku ingin melihat hubungan antara pembelian permen di bulan ini dengan kunjungan ke dokter di bulan depan, maka aku akan memasangkan data pembelian permen di bulan Januari 1996 dengan kunjungan dokter di bulan Februari 1996 dan seterusnya.

# Untuk mendapatkan data dengan delayed effect tersebut, aku memanfaatkan perintah lag dengan menggunakan library dplyr. Aku menggunakan perintah library (dplyr) untuk mengimport library dplyr atau menggunakan perintah install.packages("dplyr") terlebih dahulu untuk menginstall package dplyr.

# Kemudian, aku menggunakan perintah lag untuk mendapatkan nilai delayed effect. Bentuk umum dari perintah lag adalah lag(x, n) dimana x merupakan data yang ingin dicari nilai lag nya dan n merupakan periode atau jumlah data. Karena data yang kumiliki merupakan data bulanan, maka nilai n akan merujuk kepada periode 1, 2, 3, bulan dst.

# Untuk saat ini, aku memutuskan untuk menggunakan delay effect paling lama sebesar 6 bulan.