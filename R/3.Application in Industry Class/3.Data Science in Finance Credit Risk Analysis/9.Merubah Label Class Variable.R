library("openxlsx")
library("C50")

#Mempersiapkan data
dataCreditRating <- read.xlsx(xlsxFile = "https://storage.googleapis.com/dqlab-dataset/credit_scoring_dqlab.xlsx")

#Mempersiapkan class dan input variables 
dataCreditRating$risk_rating[dataCreditRating$risk_rating == "1"]  <-  "satu"
dataCreditRating$risk_rating[dataCreditRating$risk_rating == "2"]  <-  "dua"
dataCreditRating$risk_rating[dataCreditRating$risk_rating == "3"]  <-  "tiga"
dataCreditRating$risk_rating[dataCreditRating$risk_rating == "4"]  <-  "empat"
dataCreditRating$risk_rating[dataCreditRating$risk_rating == "5"]  <-  "lima"
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
summary(risk_rating_model)



# Teori
# Label risk rating pada confusion matrix kita saat ini adalah 1 sampai dengan 5. Ini karena kebetulan contoh class variable kita adalah angka terurut seperti itu.

# Agar tidak bingung mari kita ubah isi dari variable risk_rating dari 1, 2, 3, 4, dan 5 menjadi "satu", "dua", "tiga", "empat" dan "lima" dengan perintah-perintah berikut.

# dataCreditRating$risk_rating[dataCreditRating$risk_rating == "1"]  <-  "satu"
# dataCreditRating$risk_rating[dataCreditRating$risk_rating == "2"]  <-  "dua"
# dataCreditRating$risk_rating[dataCreditRating$risk_rating == "3"]  <-  "tiga"
# dataCreditRating$risk_rating[dataCreditRating$risk_rating == "4"]  <-  "empat"
# dataCreditRating$risk_rating[dataCreditRating$risk_rating == "5"]  <-  "lima"
# Tiap perintah ini memiliki tiga bagian, kita akan ambil contoh untuk perintah pertama:

# dataCreditRating$risk_rating[...], artinya kita mengakses kolom risk_rating  pada indeks ke ...
# dataCreditRating$risk_rating == "1", artinya kita mengambil indeks dimana nilai risk_rating bernilai "1"
# <- "satu", teks "satu" dimasukkan ke ...
# Dengan demikian, arti dari perintah pertama adalah memasukkan teks "satu" ke variable risk_rating dengan indeks dimana nilai risk_rating bernilai "1".

# Masukkan kelimat perintah tersebut untuk menggantikan #[...1...] pada code editor kita dan jalankan. Jika berhasil, perhatikan output confusion matrix dimana labelnya - ditandai dengan warna biru - sudah berubah menjadi teks "dua", "empat", "lima", "satu", dan "tiga" (diurutkan berdasarkan alfabet).


# 	   (a)   (b)   (c)   (d)   (e)    <-classified as
# 	  ----  ----  ----  ----  ----
# 	    30     3    12    80    14    (a): class dua
# 	     2    73    31                (b): class empat
# 	          17    80                (c): class lima
# 	     1     5     6   179     5    (d): class satu
# 	     4                     258    (e): class tiga

# Bandingkan dengan confusion matrix sebelumnya, dimana semua hasilnya tetap konsisten. Hanya saja urutannya berubah.

 

# 	   (a)   (b)   (c)   (d)   (e)    <-classified as
# 	  ----  ----  ----  ----  ----
# 	   179     1     5     5     6    (a): class 1
# 	    80    30    14     3    12    (b): class 2
# 	           4   258                (c): class 3
# 	           2          73    31    (d): class 4
# 	                      17    80    (e): class 5
# Demikian praktek kita kali ini, yang bertujuan untuk memperjelas output confusion matrix dari summary C5.0. Label "satu", "dua", dstnya hanya untuk menunjukkan, tapi tidak akan digunakan di content berikutnya.