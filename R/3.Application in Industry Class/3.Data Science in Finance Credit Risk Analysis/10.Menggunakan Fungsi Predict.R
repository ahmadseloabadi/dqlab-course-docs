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

#menghasilkan model
risk_rating_model <- C5.0(input_training_set, class_training_set, control = C5.0Control(label="Risk Rating"))

#menggunakan model untuk prediksi testing set
predict(risk_rating_model, input_testing_set)


# Teori
# Package C50 memiliki fungsi bernama predict, yang bisa digunakan untuk melakukan prediksi berdasarkan input model dan data test. Fungsi lengkapnya terlihat sebagai berikut.

# predict(model, test_set)
# dan untuk contoh kita, maka tampilan lengkapnya adalah sebagai berikut.

 

# predict(risk_rating_model, input_testing_set)
# Gantilah bagian #[...1...] pada code editor dengan perintah di atas dan jalankan. Jika berjalan dengan baik, maka tampilan hasilnya adalah sebagai berikut.

# > predict(risk_rating_model, input_testing_set)
#   [1] 1 3 4 1 5 4 4 2 1 3 3 1 3 3 3 4 3 1 1 3 5 3 5 1 4 4 1 3 3 1 2 3 3 1 3 5 3
#  [38] 3 3 1 3 3 5 1 5 1 5 1 3 3 4 1 3 1 1 3 1 1 1 5 1 1 3 3 3 1 3 4 1 3 3 3 1 3
#  [75] 4 3 2 1 3 1 5 5 1 1 4 4 3 2 4 1 1 4 1 3 1 1 1 5 4 3
# Levels: 1 2 3 4 5 
 

# Terlihat hasil prediksi semua sesuai dengan posisi baris data dari testing set. Dan ini juga sesuai dengan rentang nilai risk_rating, yaitu 1 sampai dengan 5.