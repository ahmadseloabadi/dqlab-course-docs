#Masukkan nama hari dari Senin - Jumat
nama_hari <- c("Senin","Selasa","Rabu","Kamis","Jumat")

#Masukkan jam kerja berurutan dari jam kerja di hari senin
jam_kerja <- c(8, 7.5, 10, 7, 7.5)

#Memberikan nama pada vector jam_kerja
names(jam_kerja) <- nama_hari

#Tampilkan isi jam_kerja sekarang
jam_kerja

#Jam kerja Andra di hari Senin menggunakan nama
jam_kerja["Senin"]

#Jam kerja Andra di hari Senin, Rabu, dan Jumat menggunakan nama
jam_kerja[c("Senin", "Rabu", "Jumat")]

#Selisih jam kerja Andra di hari Senin dengan hari Rabu
jam_kerja["Rabu"] - jam_kerja["Senin"]

