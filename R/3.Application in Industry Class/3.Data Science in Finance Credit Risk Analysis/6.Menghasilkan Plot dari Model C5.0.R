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
plot(risk_rating_model)


# Teori
# Selain model teks dari praktek sebelumnya, kita juga bisa menghasilkan decision tree dalam bentuk grafik. Dan cuma butuh satu perintah untuk melakukan hal ini, yaitu:

# plot(model)
# Dengan code praktek yang telah kita lakukan - dimana model kita namakan risk_rating_model - maka perintah tersebut kita sesuaikan menjadi.

# plot(risk_rating_model)
# Ketikkan perintah tersebut untuk menggantikan bagian #[...1...] dari code editor. 


# Kesimpulan
# Algoritma C5.0 adalah algoritma machine learning yang digunakan untuk membentuk model pohon keputusan (decision tree) secara otomatis, dan cocok untuk memodelkan dan sebagi alat prediksi credit rating.

# Karena algoritma ini masuk ke dalam kategori classification, variable yang diperlukan oleh algoritma ini ada dua macam:

# Class variable, yaitu variable yang berisi nilai yang ingin kita klasifikasikan. Variable ini harus berisi tipe factor.
# Input variables, yaitu variable-variable yang berisi nilai input.
# Dan untuk mengukur akurasi dari model yang kita hasilkan, kita sebaiknya membagi dataset yang ada menjadi dua porsi secara random:

# Training set, yang digunakan untuk memberikan input ke algoritma untuk membentuk model.
# Testing set, yang akan digunakan untuk data pembanding untuk mengukur akurasi algoritma.
# Setelah semua persiapan dataset ini selesai, pada penutup bab dataset ini kita menggunakan fungsi C5.0 untuk membentuk model risk rating. Dan untuk mencetak hasil yang bisa dibaca atas model ini, kita gunakan fungsi  summary. Sedangkan untuk menghasilkan diagram decision tree kita gunakan perintah plot. Semua function ini dari package C50.