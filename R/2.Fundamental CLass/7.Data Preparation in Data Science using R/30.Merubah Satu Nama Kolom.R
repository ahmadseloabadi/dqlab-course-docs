#Membaca dataset csv
penduduk.dki.csv <-read.csv("https://storage.googleapis.com/dqlab-dataset/dkikepadatankelurahan2013.csv", sep=",")
names(penduduk.dki.csv)[1] <- "PERIODE"
names(penduduk.dki.csv)[2] <- "PROPINSI"
names(penduduk.dki.csv)


# Teori
# Function names ini juga bisa digunakan merubah nama kolom pada data.frame. Untuk merubahnya kita gunakan konstruksi berikut:

# names(variable)[posisi] <- "nama_baru"
# Dengan posisi adalah nomor indeks dari posisi nama kolom yang ingin diubah. Berikut adalah contoh dimana kita merubah nama kolom dari TAHUN ke PERIODE (posisi 1) dari dataset kita.

# names(penduduk.dki.csv)[1] <- "PERIODE"
# Tugas Praktek

# Gantilah bagian […1…] dan […2…] dengan perintah yang merubah nama kolom dari dataset kependudukan.dki.csv pada posisi pertama dengan "PERIODE" dan posisi kedua dengan "PROPINSI".