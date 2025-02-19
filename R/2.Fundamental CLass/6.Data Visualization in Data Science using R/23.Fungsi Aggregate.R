library(ggplot2)

#Membaca data csv dan dimasukkan ke variable penduduk.dki
penduduk.dki <- read.csv("https://storage.googleapis.com/dqlab-dataset/datakependudukandki-dqlab.csv", sep=",")
#Melakukan agregasi
aggregate(x=list(JUMLAH=penduduk.dki$JUMLAH), FUN=sum, by = list(NAMA.KABUPATEN.KOTA=penduduk.dki$NAMA.KABUPATEN.KOTA, JENIS.KELAMIN=penduduk.dki$JENIS.KELAMIN))

# Teori
# Data frame yang kita gunakan pada plot, sering sekali harus dilakukan summary terlebih sehingga dapat diproses lebih mudah oleh layer di ggplot.

# Fungsi summary yang bisa kita gunakan adalah function aggregate, yang memiliki minimal tiga input sebagai berikut:

# x: merupakan list dari kolom data yang ingin kita jadikan summary
# FUN: function summary yang bisa kita gunakan, misalkan sum, mean, dan lain-lain
# by: list berisi pasangan daftar field yang ingin kita gunakan
# Untuk lebih jelasnya, kita langsung gunakan contoh sebagai berikut:

# aggregate(x=list(RATARATA=penduduk.dki$JUMLAH), FUN=mean, by = list(NAMA.KABUPATEN.KOTA=penduduk.dki$NAMA.KABUPATEN.KOTA, JENIS.KELAMIN=penduduk.dki$JENIS.KELAMIN))
# Berikut adalah penjelasan lengkap elemen-elemen perintah di atas.

# Komponen                                Deskripsi

# aggregate                               Fungsi aggregate yang akan menghasilkan data.frame baru

# x=list(RATARATA=penduduk.dki$JUMLAH)    Parameter x diisi dengan list. Kebetulan listnya isinya adalah 1 variabel bernama RATARATA yang diambil dari kolom penduduk.dki$JUMLAH

# FUN=mean                                Fungsi yang digunakan adalah rata-rata (mean) untuk summary

# by = list(NAMA…..KELAMIN)               Dua kolom group by digunakan yaitu NAMA.KABUPATEN.KOTA dan JENIS.KELAMIN

# Tugas Praktek

# Di dalam code editor telah tersedia code yang perlu kita lengkapi. Ganti bagian […] dengan function aggregate dari teks lesson di atas, namun dengan fungsi sum. Kemudian nama RATARATA diganti dengan JUMLAH.