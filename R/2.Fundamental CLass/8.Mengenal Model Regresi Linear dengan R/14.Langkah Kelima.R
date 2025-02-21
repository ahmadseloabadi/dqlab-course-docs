# Analisis Regresi menggunakan R
data_regresi = data.frame(
bulan = data_delayed_effect$bulan,
tahun = data_delayed_effect$tahun,
kunjungan_dokter = data_delayed_effect$kunjungan_dokter,
penjualan_sereal = data_delayed_effect$penjualan_sereal_4)

# Mengeliminasi data NA
data_regresi = na.omit(data_regresi)

# Model regresi menggunakan R
model = lm(kunjungan_dokter ~ penjualan_sereal, data = data_regresi)
summary(model)

# Teori
# Setelah melakukan data eksplorasi, lakukanlah analisis regresi!

# Lakukan interpretasi dari model regresi dan temukan informasi yang berguna terkait hubungan antara penjualan sereal terhadap kunjungan rumah sakit!

# Karena sudah kudapatkan hasil periode delayed efect yang cukup kuat dan positif 4 bulan, maka untuk data ini pun periode yang kugunakan adalah 4 bulan. 



 
# penjelasan
# Persamaan regresi yang digunakan untuk data ini adalah y = 52.962412 + 0.002975 x, dimana terdapat korelasi positif antara penjualan serial dengan kunjungan rumah sakit. Yang berarti bahwa setiap ada peningkatan penjualan sereal maka akan mengakibatkan kenaikan kunjungan rumah sakit dalam 4 bulan mendatang.

# Penutup
# Aku telah berhasil mendapatkan beberapa informasi yang akan berguna untuk disampaikan di dalam penyuluhan kesehatan gigi sebagai berikut:

# Hubungan antara penjualan permen dengan kunjungan ke dokter bersifat positif. Yang berarti bahwa ketika penjualan permen semakin meningkat, maka kunjungan ke dokter akan meningkat juga. Namun efek peningkatan kunjungan dokter ini akan terjadi dalam 4 bulan kedepan.
# Setiap ada kenaikan penjualan permen sebesar 100,000 maka akan meningkatkan kunjungan dokter sebesar 35.934 unit dalam 4 bulan kedepan. 
# Aku segera menyampaikan hasil dari analisis regresi ini kepada Kroma. Kroma terlihat senang dengan laporan yang kuberikan. Kroma langsung antusias dan segera menyiapkan materi yang dibutuhkan untuk penyuluhan kesehatan gigi.