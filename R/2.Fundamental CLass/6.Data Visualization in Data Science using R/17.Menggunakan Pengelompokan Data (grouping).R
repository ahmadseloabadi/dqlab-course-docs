library(ggplot2)

#Membaca data csv dan dimasukkan ke variable inflasi.indo.sing
inflasi.indo.sing <- read.csv("https://storage.googleapis.com/dqlab-dataset/inflasi.csv", sep=",")

#Menambahkan data dan aesthetic mapping
plot.inflasi <- ggplot(data=inflasi.indo.sing, aes(x = Bulan,  y=Inflasi,  color=Negara, group=Negara))

#Menambahkan Layer
plot.inflasi + geom_line()


# Teori
# Pada praktek sebelumnya, kita tidak mendapatkan grafik trend inflasi dari negara Indonesia dan Singapura. Hasil akhirnya terlihat sebagai berikut.



# Penyebabnya adalah sistem kebingungan karena data untuk tiap bulan memiliki dua titik data, yang akan menjadi kendala karena tiap line perlu satu titik data untuk sumbu x dan y.

# Ini karena kita belum membagi data dengan aesthetic grouping dengan konstruksi berikut. Walaupun pada gambar kita sudah memiliki aesthetic color yang membagi Indonesia dan Singapura, tapi kita masih perlu memiliki aesthetic group sebagai berikut:

# aes(…, group=Negara)
# Dimana … mewakili pasangan aesthetic mapping lainnya.

 

# Tugas Praktek

# Tambahkan aesthetic group dengan Negara pada bagian […] di code editor, sehingga jika dijalankan akan menghasilkan grafik berikut.