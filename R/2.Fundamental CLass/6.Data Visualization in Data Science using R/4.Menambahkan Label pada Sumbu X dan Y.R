library(ggplot2)
plot.jakarta <- ggplot()
plot.jakarta <- plot.jakarta + labs(title="Luas Wilayah vs Kepadatan Penduduk DKI Jakarta - Periode 2013", subtitle="Tahun 2013")
plot.jakarta <- plot.jakarta + labs(x="Luas Wilayah (km2)", y = "Kepadatan Jiwa per km2")
plot.jakarta


# Teori
# Function labs yang sudah diperkenalkan pada tiga praktek sebelumnya bukan hanya bisa diisi dengan judul dan subjudul, tapi bisa juga untuk mengisi teks pada sumbu x dan y.

# Berikut adalah konstruksi perintahnya:

# [objek plot] + labs(x="Label X", y = "Label Y")
# Berikut adalah penjelasan lengkap elemen-elemen perintah di atas.

# Komponen	        Deskripsi
# [objek plot]        Objek plot, untuk saat ini adalah objek yang dihasilkan oleh function ggplot()

# +                   Tanda plus, operator untuk menambahkan komponen lain ke dalam plot

# labs                Function untuk menghasilkan komponen label text untuk ditambahkan ke dalam plot

# subtitle	        Parameter untuk sub judul, bagian dari function labs

# x                   Parameter untuk sumbu x, bagian dari function labs

# "Label X"	        Nilai teks untuk x, ini bisa diganti sesuai keinginan kita
# y	                Parameter untuk sumbu y, bagian dari function labs
# "Label Y"	        Nilai teks untuk y, ini bisa diganti sesuai keinginan kita

# Catatan: Function labs ini bisa digunakan berkali-kali pada plot. Ini artinya kita bisa menambahkan x dan y pada function labs sebelumnya, atau menambahkan function labs baru untuk mengisi label x dan y.


# Tugas Praktek

# Ubah bagian […] pada code editor untuk menambahkan pada variable plot.jakarta, kemudian berikan label untuk sumbu x dengan teks " Luas Wilayah (km2)" dan sumbu y dengan teks " Kepadatan Jiwa per km2".