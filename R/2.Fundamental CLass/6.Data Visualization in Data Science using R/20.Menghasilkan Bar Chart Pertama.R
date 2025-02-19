library(ggplot2)
#Membaca data csv dan dimasukkan ke variable penduduk.dki
penduduk.dki <- read.csv("https://storage.googleapis.com/dqlab-dataset/datakependudukandki-dqlab.csv", sep=",")
plot.dki <- ggplot(data=penduduk.dki, aes(x = NAMA.KABUPATEN.KOTA))
plot.dki + geom_bar()

# Teori
# Untuk menghasilkan bar chart kita bisa gunakan function geom_bar. Function ini akan menghasilkan sebuah layer untuk kita tambahkan ke plot.

# Secara default, stat yang digunakan oleh geom_bar adalah count sehingga bar chart hanya akan menghitung jumlah baris data point per x, dan tidak membutuhkan aesthetic mapping y.

# Berikut adalah contoh perintah dimana kita menghasilkan bar chart dengan dataset kependudukan DKI Jakarta.

# plot.dki <- ggplot(data=penduduk.dki, aes(x = JENIS.KELAMIN))
# plot.dki + geom_bar()

# Kelihatan aneh karena jumlah baris data untuk Laki-laki dan Perempuan di dataset kita seimbang. Dan karena stat untuk geom bar adalah count, maka yang ditampilkan adalah jumlah baris data. Ini akan kita ubah pada praktek selanjutnya.

 

# Tugas Praktek

# Di dalam code editor telah tersedia code untuk membaca dataset baru kita.