library(ggplot2)
#Membaca data csv dan dimasukkan ke variable penduduk.dki
penduduk.dki <- read.csv("https://storage.googleapis.com/dqlab-dataset/dkikepadatankelurahan2013.csv", sep=",")
# Masukkan data ke dalam plot dan simpan sebagai variable plot.dki, dan tampilkan summary dari plot tersebut
plot.dki <- ggplot(data = penduduk.dki)
summary(plot.dki)


# Teori
# Data dapat dimasukkan ke dalam plot melalui argumen di function ggplot dengan syntax berikut :

# ggplot(data = …)
# Untuk contoh data kependudukan kita, maka perintah lengkapnya adalah sebagai berikut :

# ggplot(data = penduduk.dki)
 

# Tugas Praktek

# Pada code editor, ganti bagian […] dengan :

# Variabel plot.dki yang menyimpan plot dengan input data variabel penduduk.dki.
# Tampilkan summary dari plot.dki.