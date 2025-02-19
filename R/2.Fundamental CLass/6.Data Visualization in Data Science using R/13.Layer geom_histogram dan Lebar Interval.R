library(ggplot2)

#Membaca data csv dan dimasukkan ke variable penduduk.dki
penduduk.dki <- read.csv("https://storage.googleapis.com/dqlab-dataset/dkikepadatankelurahan2013.csv", sep=",")

#Menambahkan data dan aesthetic mapping
plot.dki <- ggplot(data=penduduk.dki, aes(x = KEPADATAN..JIWA.KM2.))
plot.dki + geom_histogram(binwidth=10000)


# Teori
# Untuk menghasilkan histogram maka kita gunakan function geom_histogram untuk ditambahkan ke plot.

# Layer histogram ini memerlukan stat bertipe bin, yaitu membagi data menjadi interval. Namun dengan penggunaan geom_histogram, stat ini sudah menjadi bin secara default jadi tidak perlu lagi dispesifikasikan.

# Secara default geom histogram tidak memerlukan aesthetic mapping untuk sumbu y, cukup menggunakan sumbu x.

# Namun ada parameter yang perlu diinput, yaitu besarnya interval bin. Ini menggunakan parameter binwidth.

# Contoh untuk membuat layer geom_histogram adalah sebagai berikut :

# [objek plot] + geom_histogram(binwidth=5000)
# Berikut adalah penjelasan lengkap elemen-elemen perintah di atas.

# Komponen	        Deskripsi
# [objek plot]        Objek plot dari hasil function ggplot() ditambah dengan komponen visual atau layer

# +                   Tanda plus, operator untuk menambahkan komponen lain ke dalam plot

# geom_histogram      Function untuk menghasilkan layer dengan geom histogram

# binwidth	        Lebar interval data, dalam hal ini 5000
 

# Tugas Praktek

# Pada code editor telah tersedia code untuk membaca data kependudukan DKI. Ganti bagian […] dengan layer histogram dan dengan interval 10000.

# Jika berhasil maka grafik yang tampil adalah sebagai berikut. Terlihat bahwa jumlah kelurahan dengan penduduk antara 10 s/d 20 ribu adalah yang terbanyak.

