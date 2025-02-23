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

#menyimpan hasil prediksi testing set ke dalam kolom hasil_prediksi
input_testing_set$risk_rating <- dataCreditRating[-indeks_training_set,]$risk_rating
input_testing_set$hasil_prediksi <- predict(risk_rating_model, input_testing_set)
print(input_testing_set)


# Teori
# Seperti diinformasikan pada subbab sebelumnya, kita akan menyimpan risk_rating dari dataset awal dan hasil prediksi ini ke dalam dua kolom nama yang lain di data frame input_testing_set. Mari kita namakan kolom tersebut dengan risk_rating dan  hasil_prediksi.

# Kita gunakan perintah pertama untuk menyimpan nilai asli risk_rating ke dalam kolom risk_rating.

# input_testing_set$risk_rating <- dataCreditRating[-indeks_training_set,]$risk_rating
# Catatan: Ingat jika -index_training_set (dengan tanda minus di depan) menunjukkan angka-angka indeks untuk testing set.

# Kemudian gunakan perintah kedua untuk menyimpan nilai prediksi ke dalam kolom hasil_prediksi.

# input_testing_set$hasil_prediksi <- predict(risk_rating_model, input_testing_set)
# Masukkan perintah tersebut untuk menggantikan bagian #[...1...] pada code editor. Setelah itu coba ganti bagian [...2...] dengan perintah untuk menampilkan seluruh isi variable input_testing_set dengan perintah berikut.

# print(input_testing_set)
# Jika semua berjalan lancar maka akan tampil output sebagai berikut. Dengan kolom risk_rating dan hasil_prediksi bersampingan, kita bisa langsung bandingkan data awal dengan hasil prediksi. Terlihat ada rating yang sama (prediksi benar) dan berbeda (prediksi salah). 