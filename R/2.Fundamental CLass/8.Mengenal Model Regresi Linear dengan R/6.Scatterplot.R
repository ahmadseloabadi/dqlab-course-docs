plot(data_delayed_effect$kunjungan_dokter, data_delayed_effect$penjualan_permen,
pch = 19,
xlab = "Kunjungan dokter",
ylab = "Penjualan Permen",
main = "Kunjungan dokter dengan penjualan permen", 
col = "blue")

plot(data_delayed_effect$kunjungan_dokter, data_delayed_effect$penjualan_permen_1,
pch = 19,
xlab = "Kunjungan dokter",
ylab = "Penjualan Permen",
main = "Kunjungan dokter dengan penjualan permen (delay 1 bulan)", 
col = "blue")

plot(data_delayed_effect$kunjungan_dokter, data_delayed_effect$penjualan_permen_2,
pch = 19,
xlab = "Kunjungan dokter",
ylab = "Penjualan Permen",
main = "Kunjungan dokter dengan penjualan permen (delay 2 bulan)", 
col = "blue")

plot(data_delayed_effect$kunjungan_dokter, data_delayed_effect$penjualan_permen_3,
pch = 19,
xlab = "Kunjungan dokter",
ylab = "Penjualan Permen",
main = "Kunjungan dokter dengan penjualan permen (delay 3 bulan)", 
col = "blue")

plot(data_delayed_effect$kunjungan_dokter, data_delayed_effect$penjualan_permen_4,
pch = 19,
xlab = "Kunjungan dokter",
ylab = "Penjualan Permen",
main = "Kunjungan dokter dengan penjualan permen (delay 4 bulan)", 
col = "blue")

plot(data_delayed_effect$kunjungan_dokter, data_delayed_effect$penjualan_permen_5,
pch = 19,
xlab = "Kunjungan dokter",
ylab = "Penjualan Permen",
main = "Kunjungan dokter dengan penjualan permen (delay 5 bulan)", 
col = "blue")

plot(data_delayed_effect$kunjungan_dokter, data_delayed_effect$penjualan_permen_6,
pch = 19,
xlab = "Kunjungan dokter",
ylab = "Penjualan Permen",
main = "Kunjungan dokter dengan penjualan permen (delay 6 bulan)", 
col = "blue")


# Teori
# Dengan menggunakan perintah yang sama seperti sebelumnya, aku mencoba mengeluarkan kembali scatter plot antara kunjungan ke dokter dengan penjualan permen dengan periode delayed effect maksimum 6. Pastinya akan ada 7 grafik yang akan didapatkan. Aku menuliskan satu per satu coding nya pada console seperti pada contoh, hingga delay 6 bulan. 

# Insight yang Aku Dapatkan
# Berdasarkan grafik yang kuhasilkan ini, aku berhasil menemukan sebuah fakta menarik. Aku melihat bahwa dengan delayed effect selama 4 bulan, hubungan antara tingkat kunjungan dokter dengan penjualan permen terlihat cukup kuat dan berkorelasi positif. 

# Baiklah, aku akan mencoba melakukan analisis model regresi menggunakan data kunjungan dokter dengan penjualan permen dengan delayed effect selama 4 bulan!

 