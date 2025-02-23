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

#Menghitung jumlah prediksi yang benar
nrow(input_testing_set[input_testing_set$risk_rating==input_testing_set$hasil_prediksi,])

# Teori
# Untuk menghitung persentase error, kita bisa menghitung terlebih dahulu jumlah data dengan prediksi yang benar. Hasil dikatakan benar jika data risk_rating sama dengan hasil_prediksi. Ini kalau kita tuliskan dengan code adalah sebagai berikut.

# input_testing_set$risk_rating==input_testing_set$hasil_prediksi
# Disini kita gunakan operator == untuk membandingkan. Cobalah ketik perintah tersebut  untuk menggantikan bagian [...1...] dan jalankan. Jika berhasil maka akan keluar input tersebut.

# > input_testing_set$risk_rating==input_testing_set$hasil_prediksi
#   [1]  TRUE FALSE FALSE  TRUE FALSE FALSE FALSE FALSE  TRUE FALSE FALSE  TRUE
#  [13] FALSE FALSE FALSE FALSE FALSE  TRUE  TRUE  TRUE FALSE  TRUE FALSE  TRUE
#  [25]  TRUE FALSE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE
#  [37]  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE FALSE  TRUE  TRUE FALSE FALSE  TRUE
#  [49]  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE FALSE  TRUE  TRUE FALSE  TRUE  TRUE
#  [61]  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE
#  [73] FALSE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE FALSE  TRUE  TRUE  TRUE
#  [85]  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE FALSE FALSE
#  [97]  TRUE  TRUE  TRUE  TRUE
# Ini artinya kalau TRUE maka data pada posisi tersebut prediksinya benar dan FALSE untuk sebaliknya, data pada posisi tersebut salah prediksinya. Namun ini masih belum dalam bentuk yang kita inginkan. Kita masih perlu beberapa tambahan perintah tersebut untuk mengeluarkan persentase prediksi yang tepat.

 

 

# Langkah berikutnya, adalah menyaring data frame tersebut dengan hasil tadi dengan perintah berikut.

# input_testing_set[input_testing_set$risk_rating==input_testing_set$hasil_prediksi,]
# Jika dijalankan dan berhasil dengan baik, maka akan muncul sebagian hasil output berikut.

#     durasi_pinjaman_bulan jumlah_tanggungan risk_rating hasil_prediksi
# 3                      12                 0           1              1
# 26                     12                 0           1              1
# 49                     36                 2           1              1
# 58                     12                 0           1              1
# 97                     12                 0           1              1
# 112                    12                 0           1              1
# 117                    24                 3           3              3
# 125                    36                 4           3              3
# 162                    12                 0           1              1
# ...

# Terlihat semua hasil filtering memiliki nilai yang sama untuk kolom risk_rating dan hasil_prediksi. Kita kemudian akan menghitung jumlah baris filtering ini dengan menambahkan fungsi nrow terhadap perintah di atas, sebagai berikut.

 

# nrow(input_testing_set[input_testing_set$risk_rating==input_testing_set$hasil_prediksi,])
 

# Jika berjalan dengan lancar, maka hasil outputnya adalah sebagai berikut.

 

# > nrow(input_testing_set[input_testing_set$risk_rating==input_testing_set$hasil_prediksi,])
# [1] 75
 

# Angka 75 ini menunjukkan jumlah data dengan prediksi yang benar terhadap testing set. Karena testing set berjumlah 100, maka persentase prediksi yang benar adalah 75%, dan error rate atau persentase yang salah adalah 25%.

# Mari kita cek hasil tersebut dengan menjumlahkan posisi diagonal pada confusion matrix kita sebelumnya.

#    hasil_prediksi  1 2  3 4 5
# 1               1 29 6  0 0 0
# 2               2  1 3  0 0 0
# 3               3  0 7 29 0 0
# 4               4  1 3  0 9 1
# 5               5  0 1  0 5 5
# Hasilnya juga 75 yang merupakan hasil dari operasi penjumlah 29 + 3 + 29 + 9 + 5. 