## Visualisasi datagabungan menggunakan scatter plot
plot(datagabungan$kunjungan_dokter, datagabungan$penjualan_sereal,
pch = 19,
xlab = "Kunjungan dokter",
ylab = "Penjualan Sereal",
main = "Kunjungan dokter dengan penjualan sereal",
col = "blue")


## Delayed period data.
## Berdasarkan scatter plot dari efek delayed period, dapat dilihat bahwa delayed period selama 4 bulan merupakan
## variabel dengan hubungan yang cukup kuat dengan kunjungan dokter.
library (dplyr)
data_delayed_effect = data.frame(
bulan = datagabungan$bulan,
tahun = datagabungan$tahun,
kunjungan_dokter = datagabungan$kunjungan_dokter,
penjualan_sereal = datagabungan$penjualan_sereal,
penjualan_sereal_1 = lag(datagabungan$penjualan_sereal),
penjualan_sereal_2 = lag(datagabungan$penjualan_sereal,2),
penjualan_sereal_3 = lag(datagabungan$penjualan_sereal,3),
penjualan_sereal_4 = lag(datagabungan$penjualan_sereal,4),
penjualan_sereal_5 = lag(datagabungan$penjualan_sereal,5),
penjualan_sereal_6 = lag(datagabungan$penjualan_sereal,6)
)
head(data_delayed_effect)


plot(data_delayed_effect$kunjungan_dokter, data_delayed_effect$penjualan_sereal_1,
pch = 19,
xlab = "Kunjungan dokter",
ylab = "Penjualan sereal",
main = "Kunjungan dokter dengan penjualan sereal (delay 1 bulan)",
col = "blue")
plot(data_delayed_effect$kunjungan_dokter, data_delayed_effect$penjualan_sereal_2,
pch = 19,
xlab = "Kunjungan dokter",
ylab = "Penjualan sereal",
main = "Kunjungan dokter dengan penjualan sereal (delay 2 bulan)",
col = "blue")
plot(data_delayed_effect$kunjungan_dokter, data_delayed_effect$penjualan_sereal_3,
pch = 19,
xlab = "Kunjungan dokter",
ylab = "Penjualan sereal",
main = "Kunjungan dokter dengan penjualan sereal (delay 3 bulan)",
col = "blue")
plot(data_delayed_effect$kunjungan_dokter, data_delayed_effect$penjualan_sereal_4,
pch = 19,
xlab = "Kunjungan dokter",
ylab = "Penjualan sereal",
main = "Kunjungan dokter dengan penjualan sereal (delay 4 bulan)",
col = "blue")
plot(data_delayed_effect$kunjungan_dokter, data_delayed_effect$penjualan_sereal_5,
pch = 19,
xlab = "Kunjungan dokter",
ylab = "Penjualan sereal",
main = "Kunjungan dokter dengan penjualan sereal (delay 5 bulan)",
col = "blue")
plot(data_delayed_effect$kunjungan_dokter, data_delayed_effect$penjualan_sereal_6,
pch = 19,
xlab = "Kunjungan dokter",
ylab = "Penjualan sereal",
main = "Kunjungan dokter dengan penjualan sereal (delay 6 bulan)",
col = "blue")

# Teori
# Sebelum melakukan analisis regresi, aku melakukan proses data eksplorasi data terlebih dahulu untuk mengetahui hubungan antara variabel kunjungan dokter dengan penjualan sereal.

# Di sini aku perlu menampilkan scatterplot untuk bisa melihat hubungan antar variabel. Sebelumnya ketika penjualan permen, delayed effect-nya di angka 4 bulan, oleh karena itu, untuk penjualan sereal aku pun mencoba menggunakan periode maksimal 6 bulan. 