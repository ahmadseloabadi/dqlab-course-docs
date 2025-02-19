library(ggplot2)
#Membaca data csv dan dimasukkan ke variable penduduk.dki
penduduk.dki <- read.csv("https://storage.googleapis.com/dqlab-dataset/dkikepadatankelurahan2013.csv", sep=",")
plot.dki <- ggplot(data=penduduk.dki, aes(x = LUAS.WILAYAH..KM2.,  y=KEPADATAN..JIWA.KM2.,  color=NAMA.KABUPATEN.KOTA))
plot.dki


# Teori
# Menampilkan Plot hasil Mapping
# Masih terkait dengan praktek sebelumnya, ada pertanyaan yang muncul di benak kita. Seperti apa tampilan dari plot yang telah dilengkapi dengan data dan aesthetic mapping?

# Untuk menjawab hal ini, cobalah jalankan tugas praktek berikut.

 

# Tugas Praktek

# Perhatikan seluruh perintah yang ada pada code editor, ini merupakan kumpulan code yang telah kita pelajari pada bab ini.

# Jika berhasil dijalankan, maka hasilnya akan terlihat sebagai berikut. Terlihat plot tidak kosong, tapi sudah terisi dengan label LUAS.WILAYAH..KM2. pada sumbu x, label KEPADATAN..JIWA.KM2 pada sumbu y, dan sudah ada garis-garis penjelas grid pada plot.

# Kesimpulan
# Plot memerlukan dua input sebagai bahan bakunya agar bisa digunakan lebih jauh, yaitu data dan aesthetic mapping (pemetaan beberapa kolom data ke elemen visual).