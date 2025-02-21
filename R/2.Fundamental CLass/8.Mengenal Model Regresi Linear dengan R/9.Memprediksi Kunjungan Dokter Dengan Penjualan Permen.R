#Menggunakan metode predict untuk memprediksi kunjungan dokter
data_prediksi = data.frame(
     month = c(1,2,3,4,5),
     year = c(1998,1998,1998,1998,1998),
     penjualan_permen = c(345646,454344,346987,209854,254634)
     )
predict(model, data_prediksi)

Teori
