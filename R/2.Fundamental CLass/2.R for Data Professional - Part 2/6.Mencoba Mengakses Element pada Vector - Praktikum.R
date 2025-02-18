#Masukkan nama hari dari Senin - Jumat
nama_hari <- c("Senin","Selasa","Rabu","Kamis","Jumat")

#Masukkan jam kerja berurutan dari jam kerja di hari senin
jam_kerja <- c(8, 7.5, 10, 7, 7.5)

#Memberikan nama pada vector jam_kerja
names(jam_kerja) <- nama_hari

#Tampilkan isi jam_kerja sekarang
jam_kerja

#Jam kerja Andra di hari Senin
jam_kerja[1]

#Jam kerja Andra di hari Senin - Rabu
jam_kerja[1:3]

#Jam kerja Andra di hari Senin, Rabu, Jumat
jam_kerja[c(1,3,5)]

# Tugas
# Instruksi dari Andra :

# Tampilkan jam kerja Andra di hari Senin.
# Tampilkan jam kerja Andra di hari Senin - Rabu.
# Tampilkan jam kerja Andra di hari Senin, Rabu dan Jumat.