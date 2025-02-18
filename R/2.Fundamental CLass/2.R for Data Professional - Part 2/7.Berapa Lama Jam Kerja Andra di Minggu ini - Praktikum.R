#Masukkan nama hari dari Senin - Jumat
nama_hari <- c("Senin","Selasa","Rabu","Kamis","Jumat")

#Masukkan jam kerja berurutan dari jam kerja di hari senin
jam_kerja <- c(8, 7.5, 10, 7, 7.5)

#Memberikan nama pada vector jam_kerja
names(jam_kerja) <- nama_hari

#Tampilkan isi jam_kerja sekarang
jam_kerja

#Berapa total jam kerja Andra?
sum(jam_kerja)

#Berapa durasi terlama Andra bekerja di minggu ini?
max(jam_kerja)

#Berapa durasi terlama Andra terlambat di minggu ini?
8 - min(jam_kerja)

#Berapa selisih antara jam kerja terlama dan terpendek Andra?
max(jam_kerja) - min(jam_kerja)

