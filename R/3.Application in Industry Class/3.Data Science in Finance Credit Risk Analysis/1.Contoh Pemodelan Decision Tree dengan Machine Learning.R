library("openxlsx")
library("C50")

#Mempersiapkan data
dataCreditRating <- read.xlsx(xlsxFile = "https://storage.googleapis.com/dqlab-dataset/credit_scoring_dqlab.xlsx")
dataCreditRating$risk_rating <- as.factor(dataCreditRating$risk_rating) 

#Menggunakan C5.0
drop_columns <- c("kpr_aktif", "pendapatan_setahun_juta", "risk_rating", "rata_rata_overdue")
datafeed <- dataCreditRating[ , !(names(dataCreditRating) %in% drop_columns)]
modelKu <- C5.0(datafeed, as.factor(dataCreditRating$risk_rating))
summary(modelKu)


# Teori

# Mari sekarang kita lihat contoh otomatisasi model decision tree dengan menggunakan salah satu algoritma populer di R, yaitu C5.0. Praktek kali ini kita hanya bertujuan untuk melihat contoh output, detilnya akan dibahas pada bab-bab selanjutnya.

# Pada code editor telah diberikan contoh code untuk membaca dan menganalisa data credit rating dari file Excel, membentuk model decision tree, dan menampilkan hasilnya dalam bentuk output. Untuk itu kita perlu gunakan package C50 yang akan kita gunakan sepanjang course ini.

# Cobalah jalankan code tersebut dengan tombol Run, dan jika berjalan dengan lancar maka akan mendapatkan potongan hasil berikut.

# Read 900 cases (4 attributes) from undefined.data

# Decision tree:

# jumlah_tanggungan > 4:
# :...durasi_pinjaman_bulan <= 24: 4 (112/30)
# :   durasi_pinjaman_bulan > 24: 5 (140/55)
# jumlah_tanggungan <= 4:
# :...jumlah_tanggungan > 2: 3 (246/22)
#     jumlah_tanggungan <= 2:
#     :...durasi_pinjaman_bulan <= 36: 1 (294/86)
#         durasi_pinjaman_bulan > 36:
#         :...jumlah_tanggungan <= 0: 2 (41/8)
#             jumlah_tanggungan > 0: 3 (67/4)
 
# Ini adalah bentuk representasi tree dalam bentuk teks. Dimana pengecekan akan dimulai dari variable jumlah_tanggungan. Sebagai contoh, jika jumlah tanggungan lebih dari 4 dan durasi pinjaman sampai dengan maksimal 24 bulan maka rating diberikan nilai 4.