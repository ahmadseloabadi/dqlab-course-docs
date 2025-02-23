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

#menyimpan risk_rating dari data awal dan hasil prediksi testing set ke dalam kolom hasil_prediksi
input_testing_set$risk_rating <- dataCreditRating[-indeks_training_set,]$risk_rating
input_testing_set$hasil_prediksi <- predict(risk_rating_model, input_testing_set)

#Menghitung jumlah prediksi yang salah
nrow(input_testing_set[input_testing_set$risk_rating!=input_testing_set$hasil_prediksi,])

# Teori
# Pada praktek sebelumnya, kita menggunakan operator == untuk membandingkan kesamaan antara kolom risk_rating dengan hasil_prediksi. Bagaimana kalau kita hanya ingin mencari yang tidak sama, dengan kata lain mencari yang salah prediksinya?

# Untuk ini cukup simpel, kita bisa menggunakan operator != sehingga kondisi pengecekan sebelumnya menjadi seperti berikut.

# nrow(input_testing_set[input_testing_set$risk_rating!=input_testing_set$hasil_prediksi,])

# Cari dan gantilah operator == pada perbandingan hasil ini dengan !=. Jika berjalan dengan lancar maka akan mengeluarkan hasil berikut.

# > nrow(input_testing_set[input_testing_set$risk_rating!=input_testing_set$hasil_prediksi,])
# [1] 25

# Terlihat bahwa jumlah prediksi error ada 25. Hasil ini konsisten jika dibandingkan dengan jumlah 75 dari prediksi yang benar, dimana total keduanya adalah 100 - yang merupakan jumlah data untuk testing set. 

# Kesimpulan
# Bab ini berisi praktek yang cukup singkat, namun menjadi bagian yang sangat penting yaitu untuk pertama kalinya kita melakukan prediksi dengan function predict terhadap porsi data testing set.

# Tujuannya adalah mengukur akurasi dari hasil prediksi dengan data awal. Ini digunakan dengan menggunakan confusion matrix  juga dan menghitung jumlah prediksi data yang benar dan salah secara agak "manual". Pendekatan terakhir adalah membandingkan data awal dan hasil prediksi di data frame dengan operator ==,  !=, dan nrow.

# Dengan tingkat error 25%, dan walaupun ada catatan untuk klasifikasi 4 dan 5, namun secara garis besar kita anggap model ini cukup baik. Dan dengan keputusan ini, saatnya kita mengadopsi model ini untuk melakukan prediksi per data aplikasi kredit baru yang masuk.