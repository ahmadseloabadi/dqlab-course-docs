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
summary(risk_rating_model)



# Teori
# Mari kita perhatikan baris pertama potongan output yang kita warnai biru sebagai berikut, output lainnya kita hilangkan.

# Class specified by attribute `outcome'

# Read 800 ....
# Ini artinya class variable kita dilabelkan atau dinamakan sebagai outcome. Jika kita kita ingin merubah label yang lebih mewakili, yaitu "Risk Rating", maka bisa kita tambahkan parameter control dengan input berupa fungsi C5.0Control dan parameter label sebagai berikut.

# control = C5.0Control(label="Risk Rating")
# Tambahkan code ini ke bagian [...1...] dari code editor, dimana sudah dimasukkan seluruh code dari bab sebelumnya - dan jalankan. Jika berjalan dengan baik, maka akan muncul bagian output class label sebagai berikut.

# Class specified by attribute `Risk Rating'

# Read 800 ....
# Terlihat label class kita sudah berubah menjadi "Risk Rating".