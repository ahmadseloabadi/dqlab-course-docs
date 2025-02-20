library(openxlsx)
#Membaca dataset dengan read.xlsx dan dimasukkan ke variable penduduk.dki
penduduk.dki.xlsx <- read.xlsx(xlsxFile="https://storage.googleapis.com/dqlab-dataset/dkikepadatankelurahan2013.xlsx")
penduduk.dki.xlsx$NAMA.PROVINSI <- as.factor(penduduk.dki.xlsx$NAMA.PROVINSI)
str(penduduk.dki.xlsx)


# Teori
# Merubah Tipe Kolom menjadi Factor
# Kita akan beralih sekarang ke dataset kependudukan DKI versi Excel, dimana terdapat perbedaan perilaku antara read.xlsx dan read.csv, yaitu secara default read.xlsx tidak mengkonversi kolom kategorik sebagai teks (character).

# Untuk melakukan konversi sebagai factor, kita gunakan function as.factor. Berikut adalah konstruksi konversi dari satu kolom data.frame.

# as.factor(data.frame$namakolom)
# Tugas Praktek

# Gantilah bagian […1…] pada code editor untuk melakukan konversi kolom NAMA.PROVINSI dari variable penduduk.dki.xlsx.

# penjelasan
# Jika berjalan dengan lancar, maka hasilnya akan tampak sebagai berikut – perhatikan jika  NAMA.PROVINSI sudah bertipe Factor, sedangkan kolom lain seperti NAMA.KABUPATEN/KOTA yang harusnya bertipe Factor masih bertipe character (chr).