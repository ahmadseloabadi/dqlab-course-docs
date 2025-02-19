#Menggunakan package ggplot2
library(ggplot2)
#Menggunakan package openxlsx
library(openxlsx)

#Membaca file mahasiswa.xlsx
mahasiswa <- read.xlsx("https://storage.googleapis.com/dqlab-dataset/mahasiswa.xlsx",sheet = "Sheet 1")

#Menampilkan data
print(mahasiswa)

#Menampilkan kolom Prodi
print(mahasiswa$Prodi)


# Teori
# Secara umum, pengolahan data di R mengharuskan membaca file dari spreadsheet, contohnya Excel.
# File bernama mahasiswa.xlsx akan dibaca dengan menggunakan fungsi read.xlsx dari package openxlsx dengan cara berikut.

# library(openxlsx)
# mahasiswa <- read.xlsx("https://storage.googleapis.com/dqlab-dataset/mahasiswa.xlsx",sheet = "Sheet 1")
 

# Dari code di atas, file yang telah dibaca dengan fungsi read.xlsx disimpan sebagai variable mahasiswa (yang bertipe data frame). Data frame mahasiswa ini berasal dari data yang dibaca pada file "mahasiswa.xlsx" di bagian sheet (lembar) "Sheet 1".


# Penjelasan
# Terlihat bahwa hasil pembacaan Excel ini merupakan sebuah data frame yang terdiri dari lima kolom, yaitu kolom dengan nama ANGKATAN, Fakultas, Prodi, Kode, dan JUMLAH, serta memiliki 35 baris data.

# Tugas
# Kita akan menggunakan data frame di atas sepanjang sisa bab ini. Sekarang, coba tampilkan kolom Prodi dari data frame tersebut dengan cara menuliskan perintah berikut setelah baris comment "#Menampilkan kolom Prodi"

# print(mahasiswa$Prodi)