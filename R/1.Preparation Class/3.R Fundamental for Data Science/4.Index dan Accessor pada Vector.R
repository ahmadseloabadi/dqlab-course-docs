# Buat vector variable bernama angka yang isinya 20 s/d 30
angka <- c(20:30)
print(angka)

# Tampilkan isi variable angka pada posisi ke 3
print(angka[3])


# Tampilkan isi variable angka pada posisi ke 5 gunakan kurung siku ganda
print(angka[[5]])


# Tampilkan isi variable angka pada posisi ke 4 s/d 6
print(angka[4:6])

# Buat vector teks dengan nama kode_prodi yang diisi sesuai petunjuk soal
kode_prodi <- c("DKV","ILKOM","ICT")
# Tampilkan isi indeks ketiga dari kode_prodi
print(kode_prodi[3])


# Toeri
# Untuk mengambil isi vector, kamu dapat mengambil berdasarkan posisinya. Posisi ini diwakili oleh angka urutan, yang disebut sebagai index.
# Cara penulisan index di variable adalah angka yang diapit dengan kurung siku tunggal atau ganda. Penulisan ini selanjutnya disebut sebagai accessor.
# Jika index yang ingin diambil lebih dari satu, maka hanya boleh menggunakan kurung siku tunggal.