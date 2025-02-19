library(ggplot2)

#Membaca data csv dan dimasukkan ke variable penduduk.dki
penduduk.dki <- read.csv("https://storage.googleapis.com/dqlab-dataset/datakependudukandki-dqlab.csv", sep=",")

#Menghasilkan bar chart

#Membuat plot
plot.dki <- ggplot(data=penduduk.dki, aes(x = NAMA.KABUPATEN.KOTA, y = JUMLAH))

#Menambahkan layer pada plot
plot.dki + geom_bar(stat = "identity")


# Teori
# Pada praktek sebelumnya, bar chart kita masih mirip dengan histogram. Dan itu bukan yang kita inginkan.

# Kita akan memplot bar chart, dimana aesthetic y menggunakan stat penjumlahan (sum) - bukan count - dari data kepadatan penduduk.

# Ini bisa dilakukan dengan mengisi dua hal berikut:

# Mengisi aesthetic y dengan kolom grouping yang kita inginkan - yaitu kolom bernama JUMLAH - pada plot (ggplot).
# y = JUMLAH
# Mengisi parameter stat dengan nilai identity pada bagian layer (geom_bar).
# stat = "identity"