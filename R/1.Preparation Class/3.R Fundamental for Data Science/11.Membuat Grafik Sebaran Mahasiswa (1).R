#Membuat dua vector
fakultas <- c("Bisnis", "D3 Perhotelan", "ICT", "Ilmu Komunikasi", "Seni dan Desain")
jumlah_mahasiswa <- c(260, 28, 284, 465, 735)
akreditasi <- c("A","A","B","A","A")

#Buat data frame dari ketiga vector di atas
info_mahasiswa <- data.frame(fakultas, jumlah_mahasiswa, akreditasi)
info_mahasiswa

#Menggunakan package ggplot2
library(ggplot2)

#Membuat kanvas
gambar <- ggplot(info_mahasiswa, aes(x=fakultas, y=jumlah_mahasiswa, fill=fakultas))

#Menambahkan objek bar chart, simpan kembali sebagai variable gambar
gambar <- gambar + geom_bar(width=1, stat="identity")

#Menambahkan judul grafik
gambar  <- gambar  + ggtitle("Jumlah Mahasiswa per Fakultas")
#Menambahkan caption pada sumbu x
gambar  <- gambar  + xlab("Nama Fakultas")
#Menambahkan caption pada sumbu y
gambar  <- gambar  + ylab("Jumlah Mahasiswa")
#Menggambar grafik
gambar


# Teori
# Pada praktek kali ini, kita akan menghasilkan bar chart sederhana dengan menggunakan variabel data frame bernama info_mahasiswa yang kita hasilkan pada subbab "Vector, List dan Data Frame". Variable ini masih bersifat statis atau hard code, artinya data frame ini bukan berdasarkan pembacaan dari suatu file atau database.

# Cara membuat grafik di R bisa menggunakan banyak cara, salah satunya dengan library ggplot2 - dimana kita menggambar chart secara bertahap, yaitu dengan konsep layering (lapisan demi lapisan).

# Untuk lebih jelasnya, pada code editor telah terdapat code-code untuk menghasilkan distribusi mahasiswa. Cobalah jalankan, dan jika lancar akan menghasilkan grafik berikut. 



# Terlihat bahwa fakultas "Seni dan Desain" merupakan fakultas dengan jumlah mahasiswa terbanyak, diikuti kemudian oleh fakultas "Ilmu Komunikasi", "ICT", "Bisnis" dan "D3 Perhotelan". Dengan histogram ini, informasi lebih mudah dilihat dan dicerna dibandingkan dengan angka bukan?

# Bagaimana grafik ini dihasilkan di ggplot?  Seperti informasi sebelumnya, grafik ini digambar lapis demi lapis. Lapisan pertama kita ibaratkan sebagai "kanvas" lukisan, dan untuk membuat "kanvas" pada contoh di code editor, kita gunakan fungsi yang namanya ggplot. 

# gambar <- ggplot(info_mahasiswa, aes(x=fakultas, y=jumlah_mahasiswa, fill=fakultas))
# Di sini terlihat hasil ggplot2 disimpan pada variable gambar. Variable ini yang akan menyimpan seluruh grafik dan digunakan untuk menggambar ketika digunakan sendiri pada code editor dengan perintah berikut.

# gambar
# Penambahan bentuk, warna dan ukuran dilakukan dengan menggunakan tanda operator plus ( + ) diikuti fungsi terkait. Sebagai contoh, untuk menggambar bentuk bar chart di atas "kanvas" kita gunakan fungsi geom_bar.

# gambar <- gambar + geom_bar(width=1, stat="identity")
# Berikut adalah penjelasan lengkap dari code yang terdapat pada code editor.

# Code

# Penjelasan

# ggplot(info_mahasiswa, aes(x=fakultas, y=jumlah_mahasiswa, fill=fakultas))

# Perintah awal untuk membentuk objek grafik ggplot2, terdiri dari:

# info_mahasiswa: data frame yang kita gunakan
# aes:  fungsi untuk mengambil data apa saja
# x: kolom yang kita gunakan untuk grafik sumbu x, dalam hal ini fakultas
# y: kolom nilai yang kita gunakan untuk plot sumbu y, dalam hal ini jumlah_mahasiswa
# fill: kolom mana yang akan kita gunakan sebagai pembeda warna. Jika fill dihilangkan maka grafik akan diisi warna abu-abu saja.
# +

# Tanda plus, digunakan untuk menggabungkan objek-objek ggplot2

# geom_bar(width = 1, stat = "identity")

 

# Perintah untuk menambahkan bentuk geometri bar chart, dengan parameter:

# width: ukuran lebar dari tiap bar chart, disini
# stat: transformasi data yang perlu dilakukan. Banyak sekali jenisnya, untuk saat ini karena kita hanya ingin plot apa adanya, kita gunakan identity. Untuk lebih lengkapnya mengenai stat ini akan dibahas di course "Data Visualization with ggplot2 in R".
# gambar

# Variable untuk menampung objek grafik.

 

# Tugas Praktik

# Mari kita sedikit improvisasi dari gambar plot tersebut dengan penambahan-penambahan berikut ini.

# Tambahkanlah judul "Jumlah Mahasiswa per Fakultas" pada chart untuk memperjelas konteksnya. Ini dapat dilakukan dengan menambahkan lapisan judul pada variable gambar dengan function ggtitle("Jumlah Mahasiswa per Fakultas") sebagai berikut 

# gambar <- gambar + ggtitle("Jumlah Mahasiswa per Fakultas")
# Catatan: tambahkan code tersebut di bawah comment "#Menambahkan judul grafik". Jalankan code untuk memastikan terdapat tambahan judul pada chart seperti potongan gambar berikut.



# Dengan cara yang sama di atas, cobalah tambahkan lagi di atas gambar dengan perintah xlab("Nama Fakultas"). Ini agar caption pada sumbu X berubah dari hanya "fakultas" menjadi "Nama Fakultas". 

# gambar <- gambar + xlab("Nama Fakultas")
# Catatan: tambahkan code tersebut di bawah comment "#Menambahkan caption pada sumbu x". Jalankan code untuk memastikan caption sumbu X sudah berubah seperti pada potongan gambar berikut.



# Dengan cara yang sama, cobalah tambahkan sendiri lapisan untuk merubah caption "jumlah_mahasiswa" menjadi "Jumlah Mashasiswa" dengan perintah ylab("Jumlah Mahasiswa"). Jika berhasil maka caption sumbu Y akan berubah seperti berikut.