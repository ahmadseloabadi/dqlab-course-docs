library(ggplot2)

#Membaca data csv dan dimasukkan ke variable penduduk.dki
penduduk.dki <- read.csv("https://storage.googleapis.com/dqlab-dataset/datakependudukandki-dqlab.csv", sep=",")

#Bagian plot
plot.dki <- ggplot(data=penduduk.dki, aes(x = NAMA.KABUPATEN.KOTA, y=JUMLAH, fill = JENIS.KELAMIN))

#Bagian penambahan layer
plot.dki + geom_bar(stat="identity", position = "dodge")


# Teori
# Pada subbab sebelumnya, kita melihat efek pergantian nilai stat pada geom_bar dari count (nilai default) menjadi identity untuk mendapatkan total penjumlahan dari angka jumlah penduduk. Saatnya kita bisa lebih memperbaiki bar chart kita dengan informasi grouping seperti berikut.



# Kita abaikan label yang menumpuk terlebih dahulu, terlihat bar chart ini telah memiliki informasi jumlah penduduk, dengan series berdasarkan jenis kelamin dan kemudian dikategorikan berdasarkan nama kabupaten / kota.

# Untuk melakukan hal ini, ada dua hal yang mesti kita lakukan:

# Aesthetic fill pada objek plot perlu diberikan input kolom JENIS.KELAMIN.
# fill = JENIS.KELAMIN
# Agar data antara Laki-laki dan Perempuan tidak menjadi satu bar, position pada layer kita isi dengan nilai dodge – dimana objek satu dengan objek yang lain diposisikan bersisian.
# position = "dodge"