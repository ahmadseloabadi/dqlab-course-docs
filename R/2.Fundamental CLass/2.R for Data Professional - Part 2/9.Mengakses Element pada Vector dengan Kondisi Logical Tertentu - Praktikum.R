#Masukkan nama hari dari Senin - Jumat
nama_hari <- c("Senin","Selasa","Rabu","Kamis","Jumat")

#Masukkan jam kerja berurutan dari jam kerja di hari senin
jam_kerja <- c(8, 7.5, 10, 7, 7.5)

#Memberikan nama pada vector jam_kerja
names(jam_kerja) <- nama_hari

#Tampilkan isi jam_kerja sekarang
jam_kerja

#Tampilkan jam_kerja yang lebih kecil dibanding dengan jam kerja normal
jam_kerja[jam_kerja < 8]

#Tampilkan jam_kerja yang lebih besar dibanding dengan jam kerja normal
jam_kerja[jam_kerja > 8]

