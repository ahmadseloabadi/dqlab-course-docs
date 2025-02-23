library("openxlsx")
library("C50")
library("reshape2")

#Mempersiapkan data
dataCreditRating <- read.xlsx(xlsxFile = "https://storage.googleapis.com/dqlab-dataset/credit_scoring_dqlab.xlsx")

#Mempersiapkan class dan input variables 
dataCreditRating$risk_rating <- as.factor(dataCreditRating$risk_rating) 
input_columns <- c("durasi_pinjaman_bulan", "jumlah_tanggungan")
datafeed <- dataCreditRating[ , input_columns ]

#Mempersiapkan training dan testing set
set.seed(100) #untuk menyeragamkan hasil random antar tiap komputer
indeks_training_set <- sample(900, 800)

#Membuat dan menampilkan training set dan testing set
input_training_set <- datafeed[indeks_training_set,]
class_training_set <- dataCreditRating[indeks_training_set,]$risk_rating
input_testing_set <- datafeed[-indeks_training_set,]

#menghasilkan model
risk_rating_model <- C5.0(input_training_set, class_training_set, control = C5.0Control(label="Risk Rating"))

#menyimpan risk_rating dari data awal dan hasil prediksi testing set ke dalam kolom hasil_prediksi
input_testing_set$risk_rating <- dataCreditRating[-indeks_training_set,]$risk_rating
input_testing_set$hasil_prediksi <- predict(risk_rating_model, input_testing_set)

#membuat confusion matrix
dcast(hasil_prediksi ~ risk_rating, data=input_testing_set)

# Teori
# Setelah hasil prediksi terhadap testing set selesai, langkah berikutnya kita coba lihat distribusi mana yang terprediksi dengan benar dan salah. Ini kita lakukan dengan confusion matrix.

# Untuk menghasilkan ini kita bisa gunakan fungsi dcast dari package reshape2, caranya adalah sebagai berikut.

# dcast(kolom ~ baris, dataframe)
# Dan untuk kasus kita, maka modifikasi perintahnya adalah sebagai berikut.

# dcast(hasil_prediksi ~ risk_rating, data=input_testing_set)
# Gunakan perintah tersebut untuk menggantikan bagian #[...1...] - setelah perintah penggabungan input variables dan hasil prediksi.

#   hasil_prediksi  1 2  3 4 5
# 1              1 29 6  0 0 0
# 2              2  1 3  0 0 0
# 3              3  0 7 29 0 0
# 4              4  1 3  0 9 1
# 5              5  0 1  0 5 5 
# Yang kita perhatikan adalah bagian berwarna berikut:

#    hasil_prediksi  1 2  3 4 5
# 1               1 29 6  0 0 0
# 2               2  1 3  0 0 0
# 3               3  0 7 29 0 0
# 4               4  1 3  0 9 1
# 5               5  0 1  0 5 5
# Header kolom yang berwarna ungu menunjukkan risk_rating hasil prediksi, sedangkan header baris warna ungu menunjukkan data risk_rating sebenarnya. Diagonal warna biru menunjukkan jumlah data yang terprediksi dengan benar, dan warna merah menunjukkan data yang salah terprediksi.

# Sekilas terlihat jumlah yang terprediksi dengan benar jauh lebih besar porsinya dibandingkan yang salah. Namun untuk yang 4 dan 5 ada sedikit catatan diman prediksi 5 itu kadang jatuh ke 4. Namun ini bisa kita abaikan, karena 4 dan 5 memang beresiko tinggi.