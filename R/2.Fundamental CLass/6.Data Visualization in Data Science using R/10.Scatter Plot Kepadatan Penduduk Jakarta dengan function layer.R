library(ggplot2)
#Membaca data csv dan dimasukkan ke variable penduduk.dki
penduduk.dki <- read.csv("https://storage.googleapis.com/dqlab-dataset/dkikepadatankelurahan2013.csv", sep=",")

#Menambahkan data dan aesthetic mapping
plot.dki <- ggplot(data=penduduk.dki, aes(x = LUAS.WILAYAH..KM2.,  y=KEPADATAN..JIWA.KM2.,  color=NAMA.KABUPATEN.KOTA))

#Menambahkan layer untuk menghasilkan grafik scatter plot
plot.dki + layer(geom = "point", stat = "identity", position = "identity")


# Teori
# Untuk menggambar grafik sebenarnya pada ggplot, kita menambahkan apa yang dinamakan layer. Layer bisa dihasilkan dengan menggunakan function layer dengan syntax berikut:

# layer(geom = "…", stat = "…", position = "…")
# Keterangan

# Komponen            Deskripsi

# Layer               Function yang digunakan untuk membentuk layer untuk ditambahkan pada plot

# geom                Bentuk geometri yang digunakan untuk layer. Beberapa daftar geometri yang bisa diberikan adalah sebagai berikut:
#                     point: untuk menggambar grafik berupa titik yang menunjukkan hubungan antar variabel atau scatter plot
#                     line: diagram garis
#                     hline: diagram garis horizontal
#                     bar: diagram batang
#                     histogram: histogram
#                     dll

# stat                Jenis transformasi untuk mengubah data dari bentuk asli ke bentuk lain. Beberapa daftar stat yang bisa digunakan antara lain adalah sebagai berikut:
#                     identity: tidak melakukan transformasi
#                     bin: membagi data menjadi interval
#                     sum: menjumlahkan nilai-nilai yang unik
#                     summary: melakukan summary dari semua nilai y untuk setiap titik data x
#                     dll

# position            Perubahan posisi terhadap tiap titik yang terdapat pada layer. Beberapa daftar position yang bisa digunakan antara lain adalah sebagai berikut:
#                     identity: tidak ada perubahan posisi
#                     jitter: merubah posisi dengan jarak acak tertentu dari posisi awal, ini digunakan untuk memberi kejelasan jika banyak titik yang overlapping (saling tindih)
#                     stack: menyusun posisi dalam bentuk tumpukan
#                     dll

# Jika kita ingin menggambar scatter plot, maka konstruksi layer yang digunakan akan berbentuk sebagai berikut:

# layer(geom = "point", stat = "identity", position = "identity")

# penjelasan
# Terlihat grafik titik (scatter plot) dihasilkan data-data kependudukan diambil Luas Wilayah untuk sumbu x, Kepadatan untuk sumbu y, dan pewarnaan dilakukan sesuai Nama Kabupaten.