library(openxlsx)
penduduk.dki.xlsx <- read.xlsx(xlsxFile="https://storage.googleapis.com/dqlab-dataset/dkikepadatankelurahan2013.xlsx")
#Tampilkan nama-nama kolom yang mengandung kata "perempuan".
pola_nama_perempuan <- grep(pattern="perempuan", x = names(penduduk.dki.xlsx), ignore.case=TRUE)
penduduk.dki.xlsx$PEREMPUAN35TAHUNKEATAS  <- rowSums(penduduk.dki.xlsx[pola_nama_perempuan])

# Teori
# Kita dapat menambahkan kolom pada data.frame langsung dengan menggunakan simbol subscript $ diikuti dengan nama kolom baru yang kita kehendaki. Misalkan untuk membuat kolom PEREMPUAN35TAHUNKEATAS pada variable penduduk.dki.xlsx, kita bisa menuliskan:

# penduduk.dki.xlsx$PEREMPUAN35TAHUNKEATAS
# Kolom baru ini kita bisa isi, misalkan dengan penjumlahan dari kolom-kolom dari dataset itu sendiri meggunakan function rowSums dari kolom-kolom data.frame. Syntaxnya adalah sebagai berikut:

# rowSums(data.frame)
# Sebagai contoh – menyambung dari praktek sebelumnya juga – untuk menjumlahkan kolom yang mengandung teks "perempuan" sebagai berikut:

# rowSums(penduduk.dki.xlsx[,grep(pattern="perempuan", x = names(penduduk.dki.xlsx), ignore.case=TRUE)])
# Dan untuk menambahkan hasil penjumlahan ini ke kolom baru di atas, kita gabungkan perintahnya dalam bentuk sebagai berikut.

# penduduk.dki.xlsx$PEREMPUAN35TAHUNKEATAS <- rowSums(penduduk.dki.xlsx[grep(pattern="perempuan", x = names(penduduk.dki.xlsx), ignore.case=TRUE)])
# Tugas Praktek

# Ganti bagian […1…] dan […2…] dengan perintah menjumlahkan dataset dengan nama-nama kolom yang mengandung kata "perempuan". Hasilnya masukkan sebagai kolom baru dengan nama PEREMPUAN35TAHUNKEATAS dari dataset penduduk.dki.xlsx.

# Perhatikan juga bahwa pola untuk nama kolom mengandung teks "perempuan" sudah disimpan ke variable bernama pola_nama_perempuan. Gunakan variable tersebut sebagai bagian jawaban.