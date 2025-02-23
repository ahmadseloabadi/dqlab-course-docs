library("openxlsx")

#Mempersiapkan data
dataCreditRating <- read.xlsx(xlsxFile = "https://storage.googleapis.com/dqlab-dataset/credit_scoring_dqlab.xlsx")
str(dataCreditRating)

#Melakukan konversi kolom risk_rating menjadi factor
dataCreditRating$risk_rating <- as.factor(dataCreditRating$risk_rating) 

#Melihat struktur setelah konversi
str(dataCreditRating)

# Teori
# Pada code editor, telah diberikan potongan code untuk membaca dataset kita dari file Excel dan kemudian menganalisa strukturnya. Cobalah jalankan code tersebut, dan perhatikan hasilnya sebagai berikut.

# 'data.frame':	900 obs. of  7 variables:
#  $ kode_kontrak           : chr  "AGR-000001" "AGR-000011" "AGR-000030" "AGR-000043" ...
#  $ pendapatan_setahun_juta: num  295 271 159 210 165 220 70 88 163 100 ...
#  $ kpr_aktif              : chr  "YA" "YA" "TIDAK" "YA" ...
#  $ durasi_pinjaman_bulan  : num  48 36 12 12 36 24 36 48 48 36 ...
#  $ jumlah_tanggungan      : num  5 5 0 3 0 5 3 3 5 6 ...
#  $ rata_rata_overdue      : chr  "61 - 90 days" "61 - 90 days" "0 - 30 days" "46 - 60 days" ...
#  $ risk_rating            : num  4 4 1 3 2 1 2 2 2 2 ...
# Untuk class variable kita, yaitu risk_rating ternyata masih dibaca dalam bentuk numerik. Untuk menjadi class variable yang digunakan pada algoritma C5.0, maka in perlu dikonversi menjadi factor. Ini bisa dilakukan dengan menggunakan perintah berikut.

# dataCreditRating$risk_rating <- as.factor(dataCreditRating$risk_rating) 
# Cobalah masukkan perintah ini untuk menggantikan bagian #[...] pada code editor dan klik tombol Run