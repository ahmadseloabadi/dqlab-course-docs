library(ggplot2)

#Membaca data csv dan dimasukkan ke variable inflasi.indo.sing
inflasi.indo.sing <- read.csv("https://storage.googleapis.com/dqlab-dataset/inflasi.csv", sep=",")

#Menambahkan data dan aesthetic mapping
plot.inflasi <- ggplot(data=inflasi.indo.sing, aes(x = Bulan,  y=Inflasi,  color=Negara))

#Menambahkan layer
plot.inflasi + geom_line()


# Teori

# Line chart atau grafik garis adalah tipe visualisasi yang sangat baik untuk menggambarkan apa impact (pengaruh) dari perubahan suatu variabel dari satu titik ke titik lain atau trend– dan variabel yang paling umum digunakan adalah waktu.

# Sebagai contoh, di bidang ekonomi untuk menggambarkan inflasi dari bulan ke bulan. Namun tentunya tidak harus selalu waktu. Perubahan lain, misalkan pengaruh kecepatan lari dengan peningkatan detak jantung.

# Untuk membuat line chart standar, kita gunakan geom bertipe "line" dan stat "identity", yang bisa diwakili oleh function geom_line.

# Pada bab berikut kita akan gunakan dataset tambahan, yaitu tingkat inflasi bulanan tahun 2017 untuk negara Indonesia dan Singapura. Selain plotting, diperkenalkan juga konsep factoring untuk menangani data dan grouping untuk grafik.

# Untuk membuat line chart dari data inflasi, kita lakukan langkah-langkah dari ggplot2:

# Membuat plot, dengan function ggplot()
# Mengisi data dari pembacaan file dengan function read.csv()
# Membuat aesthetic mapping, dengan function aes
# Menambahkan layer, dengan function geom_line()
# Berikut adalah tugas praktek yang coba kita lakukan. Untuk praktek kali ini, sengaja kita buat hasilnya error.

# Tugas Praktek

# Tambahkan layer untuk line chart pada bagian […] di code editor yang telah dilengkapi dengan plot, data, dan aesthetic mapping.