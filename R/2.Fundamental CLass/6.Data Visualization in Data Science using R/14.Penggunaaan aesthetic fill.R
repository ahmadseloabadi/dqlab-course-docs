library(ggplot2)

#Membaca data csv dan dimasukkan ke variable penduduk.dki
penduduk.dki <- read.csv("https://storage.googleapis.com/dqlab-dataset/dkikepadatankelurahan2013.csv", sep=",")

plot.dki <- ggplot(data=penduduk.dki, aes(x = KEPADATAN..JIWA.KM2., fill = NAMA.KABUPATEN.KOTA))

plot.dki + geom_histogram(binwidth = 10000)


# Teori
# Kita dapat melakukan banyak penambahan informasi pada histogram sebelumnya. Salah satunya adalah melihat porsi jumlah kelurahan berdasarkan nama kabupaten / kota pada tiap rentang histogram seperti berikut.

# Untuk ini kita menggunakan aesthetic fill dengan syntax berikut :

#  aes(fill = NAMA.KABUPATEN.KOTA)
# Catatan: aesthetic color sebenarnya juga bisa digunakan namun hasilnya akan tampak sebagai berikut.

# Tugas Praktek

# Lengkapi code editor dimana histogram yang dihasilkan bisa ditambahkan dengan aesthetic fill – input berupa kolom NAMA.KABUPATEN.KOTA.