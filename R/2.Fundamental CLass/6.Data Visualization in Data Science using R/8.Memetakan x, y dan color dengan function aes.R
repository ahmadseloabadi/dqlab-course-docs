library(ggplot2)
#Membaca data csv dan dimasukkan ke variable penduduk.dki
penduduk.dki <- read.csv("https://storage.googleapis.com/dqlab-dataset/dkikepadatankelurahan2013.csv", sep=",")
plot.dki <- ggplot(data=penduduk.dki, aes(x = LUAS.WILAYAH..KM2.,  y=KEPADATAN..JIWA.KM2., color=NAMA.KABUPATEN.KOTA))
summary(plot.dki)


# Teori
# Setelah data dimasukkan pada plot, saatnya kita memetakan kolom yang diperlukan pada data tersebut ke elemen visual. Pemetaan ini disebut dengan aesthetic mapping.

# Untuk melakukan hal ini, kita gunakan function aes yang memiliki syntax berikut :

# aes([nama_elemen_1] = [nama_kolom_atau_nilai_ 1], [nama_elemen_2] = [nama_kolom_atau_nilai_ 2] …)
# Berikut adalah penjelasan syntax-nya.

# Komponen                    Deskripsi

# Aes                         Function untuk memetakan elemen-elemen visual dengan nilai atau variabel

# [nama_elemen_1]             Nama elemen visual sebagai parameter pertama. Nama elemen ini bisa x, y dan color yang akan kita gunakan di tugas praktek.

# [nama_kolom_atau_nilai_1]   Nama kolom yang terdapat pada data atau nilai konstanta. Sebagai contoh, untuk nama kolom bisa NAMA.KECAMATAN sedangkan untuk nilai konstanta bisa dimasukkan nilai teks maupun angka.

# [nama_elemen_2]             Nama elemen visual sebagai parameter kedua. Nama elemen ini bisa x, y dan color yang akan kita gunakan di tugas praktek.

# [nama_kolom_atau_nilai_2]   Nama kolom yang terdapat pada data atau nilai konstanta. Sebagai contoh, untuk nama kolom bisa NAMA.KELURAHAN sedangkan untuk nilai konstanta bisa dimasukkan nilai teks maupun angka.

# …

# Pasangan nama elemen dan variabel/nilai lainnya.

# Kembali ke awal kebutuhan kita, mari kita lihat gambar berikut. Terlihat kita ingin memetakan x, y dan color ke kolom NAMA KABUPATEN/KOTA, LUAS WILAYAH (KM2) dan KEPADATAN (JIWA/KM2).



# Tetapi kita lihat di bagian bawah gambar, nama-nama kolom yang akan dimapping mengalami sedikit perubahan ketika dibaca di R, dimana spasi dan non huruf maupun angka diubah menjadi titik. Sebagai contoh, NAMA KABUPATEN/KOTA diubah menjadi NAMA.KABUPATEN.KOTA.

# Berikut adalah contoh penggunaan aes berdasarkan kebutuhan tersebut.

# aes(x = LUAS.WILAYAH..KM2., y=KEPADATAN..JIWA.KM2.,  color=NAMA.KABUPATEN.KOTA)
# Dan function aes ini harus dipasangkan dengan function ggplot yang telah memiliki data, sehingga konstruksi lengkap code-nya adalah sebagai berikut.

# ggplot(data=penduduk.dki, aes(x = LUAS.WILAYAH..KM2.,  y=KEPADATAN..JIWA.KM2., color=NAMA.KABUPATEN.KOTA))

# Untuk lebih jelasnya mari kita lakukan tugas praktek berikut.


# Tugas Praktek

# Pada code editor, ganti bagian […] dengan aesthetic mapping dengan pemetaan berikut:

# x = LUAS.WILAYAH..KM2.,
# y = KEPADATAN..JIWA.KM2.
# color = NAMA.KABUPATEN.KOTA