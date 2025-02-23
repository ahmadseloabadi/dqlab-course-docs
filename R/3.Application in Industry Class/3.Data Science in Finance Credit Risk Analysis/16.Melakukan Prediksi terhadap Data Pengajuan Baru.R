library("openxlsx")
library("C50")

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

#menghasilkan dan menampilkan summary model
risk_rating_model <- C5.0(input_training_set, class_training_set)

#Membuat data frame aplikasi baru
aplikasi_baru <- data.frame(jumlah_tanggungan = 6, durasi_pinjaman_bulan = 12)

#melakukan prediksi
predict(risk_rating_model, aplikasi_baru)


# Teori
# Data aplikasi baru yang telah kita buat sebelumnya akan diprediksi nilai risk_rating-nya dengan fungsi predict, dimana cara penggunaannya masih sama dengan cara yang ditunjukkan pada bab evaluasi model, yaitu dengan syntax berikut.

# predict(model, dataframe)
# Code editor telah terisi code-code yang digunakan untuk membentuk model dan data frame aplikasi baru. Gantilah bagian [...1...] dengan code untuk melakukan prediksi. Sesuaikan perintah di atas dengan nama model dan variable yang digunakan. Variable risk_rating_model sebagai model dan aplikasi_baru sebagai data frame yang akan di prediksi.

# Penjelasan
# Ini artinya hasil prediksi risk_rating untuk aplikasi baru ini adalah 4, dari kemungkinan 1, 2, 3, 4 dan 5. Nilai 4 ini adalah nilai resiko yang cukup tinggi, jadi bisa saja aplikasi baru ini ditolak sesuai dengan kebijakan lembaga peminjam.

