library(ggplot2)

#Penambahan judul dengan menggunakan fungsi labs
ggplot() + labs(title="Luas Wilayah vs Kepadatan Penduduk DKI Jakarta - Periode 2013")

# Teori
# Setiap orang akan sangat terbantu melihat suatu grafik apabila memiliki judul yang jelas. Ini dapat ditambahkan di ggplot dengan fungsi labs(title = "....").

# Contoh perintah (syntax) dari labs adalah sebagai berikut:

# [objek plot] + labs(title="Judul")
# Berikut adalah penjelasan lengkap elemen-elemen perintah di atas.

# Komponen	    Deskripsi
# [objek plot]    Objek plot, untuk saat ini adalah objek yang dihasilkan oleh function ggplot()

# +               Tanda plus, operator untuk menambahkan komponen lain ke dalam plot

# labs            Function untuk menghasilkan komponen label text untuk ditambahkan ke dalam plot

# title           Parameter judul, bagian dari function labs
# "Judul"	        Nilai teks untuk judul, ini bisa diganti sesuai keinginan kita
 

# Tugas Praktek

# Tambahkan plot – function ggplot() – yang ada di code editor dengan judul "Luas Wilayah vs Kepadatan Penduduk DKI Jakarta - Periode 2013".