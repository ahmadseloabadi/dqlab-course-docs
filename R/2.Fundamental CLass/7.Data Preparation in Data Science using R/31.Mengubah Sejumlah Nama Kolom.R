#Membaca dataset csv
penduduk.dki.csv <-read.csv("https://storage.googleapis.com/dqlab-dataset/dkikepadatankelurahan2013.csv", sep=",")
names(penduduk.dki.csv)[c(1:2)] <- c("PERIODE", "PROPINSI")
names(penduduk.dki.csv)


# Teori
# Perintah untuk mengubah dua kolom pada praktek sebelumnya bisa disingkat dengan konstruksi berikut:

# names(variable)[c(rentang_posisi)] <- c("nama_baru_1", "nama_baru_2")
# Dengan rentang_posisi adalah daftar nomor dari posisi indeks dari nama kolom yang ingin diubah. Berikut adalah contoh dimana kita mengubah nama kolom dari TAHUN ke PERIODE (posisi 1) dari dataset kita.

# names(penduduk.dki.csv)[c(1:2)] <- c("PERIODE", "PROPINSI")
# Tugas Praktek

# Gantilah bagian […1…] dengan perintah yang mengubah nama kolom dari dataset kependudukan.dki.csv pada posisi pertama dengan "PERIODE" dan posisi kedua dengan "PROPINSI".