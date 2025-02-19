library(ggplot2)
#Membaca data csv dan dimasukkan ke variable penduduk.dki
penduduk.dki <- read.csv("https://storage.googleapis.com/dqlab-dataset/dkikepadatankelurahan2013.csv", sep=",")

#Menambahkan data dan aesthetic mapping
plot.dki <- ggplot(data=penduduk.dki, aes(x = LUAS.WILAYAH..KM2.,  y=KEPADATAN..JIWA.KM2.,  color=NAMA.KABUPATEN.KOTA))

#Menambahkan layer scatter plot dengan geom_point
plot.dki + geom_point()


# Teori
# Perintah layer untuk menggambar scatter plot pada subbab sebelumnya, memiliki shortcut function yang lebih pendek. Function tersebut bernama geom_point.

# Dengan demikian, fungsi layer yang sebelumnya harus diketik sebagai berikut :

# layer(geom = "point", stat = "identity", position = "identity")
# dapat diubah menjadi :

# geom_point()
# Catatan: Stat dan position tidak perlu diisi, karena fungsi geom_point ini secara otomatis akan memiliki nilai "identity" untuk stat dan position. Berbeda ketika menggunakan layer, dimana parameter stat dan position harus diisi lengkap.