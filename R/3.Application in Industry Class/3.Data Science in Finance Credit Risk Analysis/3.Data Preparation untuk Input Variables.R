library("openxlsx")

#Mempersiapkan data
dataCreditRating <- read.xlsx(xlsxFile = "https://storage.googleapis.com/dqlab-dataset/credit_scoring_dqlab.xlsx")

#Merubah tipe data class variable sebagai factor 
dataCreditRating$risk_rating <- as.factor(dataCreditRating$risk_rating) 
str(dataCreditRating)

#Menghilangkan beberapa variable input dari dataset 
input_columns <- c("durasi_pinjaman_bulan", "jumlah_tanggungan")
datafeed <- dataCreditRating[ , input_columns ]
str(datafeed)

# Teori
# Tidak semua input variable yang perlu kita gunakan, apalagi yang sangat berkaitan sangat erat dengan risk_rating, yaitu rata_rata_overdue. Input variable ini akan kita buang. Proses ini disebut sebagai feature selection.

# Karena kita gunakan data frame sebagai tipe data input kita untuk C5.0, maka field-field yang ingin kita gunakan bisa kita kita masukkan sebagai vector sebagai filter.

# Berikut adalah perintah untuk membuat vector nama kolom yang kita butuhkan saat ini, yaitu durasi_pinjaman_bulan dan jumlah_tanggungan. Hasil filtering ini kita simpan ke variable baru bernama datafeed, dan perintah terakhir kita gunakan melihat struktur variable ini.

# input_columns <- c("durasi_pinjaman_bulan", "jumlah_tanggungan")
# datafeed <- dataCreditRating[ , input_columns ]
# str(datafeed)
# Catatan: kode_kontrak harusnya tidak dipilih karena unik untuk keseluruhan data, dan tidak menjadi penentu untuk membentuk pola. Tetapi ini dimasukkan dengan tujuan untuk menunjukkan C5.0 memiliki kemampuan untuk membuang variable input yang tidak relevan secara otomatis. 