library(ggplot2)
#Menggunakan package openxlsx
library(openxlsx)

#Membaca file mahasiswa.xlsx
mahasiswa <- read.xlsx("https://storage.googleapis.com/dqlab-dataset/mahasiswa.xlsx",sheet = "Sheet 1")

#Membuat kanvas
gambar <- ggplot(mahasiswa, aes(x=Fakultas, y=JUMLAH, fill=Fakultas))

#Menambahkan objek bar chart, simpan kembali sebagai variable gambar
gambar <- gambar + geom_bar(width=1, stat="identity")

#Menggambar grafik
gambar

# Teori
# Setelah memiliki kemampuan membaca sumber data dari luar yaitu file Excel yang berisi data jumlah mahasiswa, kita akan kembali menghasilkan grafik sebaran yang sudah kita lakukan sebelumnya - tapi kali ini dengan hasil pembacaan tersebut.

# Pada code editor telah diisi code-code untuk membaca file Excel dan menghasilkan grafik batang. Cobalah jalankan, dan jika berhasil maka akan mendapatkan grafik batang yang menunjukkan porsi jumlah mahasiswa per fakultas.

# Lalu apa perbedaan praktek kita kali ini dengan subbab "Membuat Grafik Sebaran Mahasiswa (1)"?

# Berikut adalah daftar perbedaannya, dari  potongan code dan hasil.

# Item	Membuat Grafik Sebaran Mahasiswa (1)	Membuat Grafik Sebaran Mahasiswa (2)	Keterangan
# Sumber Data	fakultas <- c("Bisnis", "D3 Perhotelan", "ICT", "Ilmu Komunikasi", "Seni dan Desain")
# jumlah_mahasiswa <- c(260, 28, 284, 465, 735)
# akreditasi <- c("A","A","B","A","A")

# info_mahasiswa <- data.frame(fakultas, jumlah_mahasiswa, akreditasi)
# info_mahasiswa	library(openxlsx)

# info_mahasiswa <- read.xlsx("https://storage.googleapis.com/dqlab-dataset/mahasiswa.xlsx",sheet = "Sheet 1")	
# Pada subbab "Membuat Grafik Sebaran Mahasiswa (1)", variabel data frame info_mahasiswa dibuat secara manual.

# Sedangkan untuk subbab "Membuat Grafik Sebaran Mahasiswa (2)", variabel data frame info_mahasiswa dibaca dari file Excel.

# Parameter pada ggplot	gambar <- ggplot(info_mahasiswa, aes(x=fakultas, y=jumlah_mahasiswa, fill=fakultas))	gambar <- ggplot(info_mahasiswa, aes(x=Fakultas, y=JUMLAH, fill=Fakultas))	Input untuk parameter x, y dan fill sedikit berbeda menyesuaikan dengan kolom hasil pembacaan dari file.
# Hasil Grafik	


# 	Nilai dan label yang berbeda menyesuaikan dengan data.