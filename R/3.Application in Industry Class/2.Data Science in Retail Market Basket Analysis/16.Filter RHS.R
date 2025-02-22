library(arules)
transaksi <- read.transactions(file="https://storage.googleapis.com/dqlab-dataset/data_transaksi.txt", format="single", sep="\t", cols=c(1,2), skip=1)

#Menghasilkan association rules dan disimpan sebagai variable mba
mba <- apriori(transaksi)

#Filter rhs dengan item "Sirup" dan tampilkan
inspect(subset(mba, rhs %in% "Sirup"))


# Teori
# Dari hasil inspect objek mba yang bertipe association rules di praktek sebelumnya, kita sekarang mengerti bahwa objek tersebut mengandung banyak informasi termasuk itemset yang terdapat di left hand side dan right hand side.

# Ini penting untuk bisnis, misalkan untuk inventory. Kita ingin menjawab, adakah item yang kurang laku sebelumnya ada di dalam itemset dari rules yang dihasilkan oleh apriori? Jika ada, mungkin saya bisa paketkan bersama sehingga kemungkinan besar terjual lebih banyak.

# Untuk melakukan ini kita akan melakukan filter atau subsetting dari rules. Banyak cara, salah satunya adalah dengan menggunakan gabungan function inspect, subset dan operator %in% dengan format berikut.

# inspect(subset(rules, rhs %in% teks_atau_vector_teks_yang_mewakili_item))
# Kita langsung contohkan saja dengan kasus kita. Misalkan kita ingin mengambil rules yang kolom rhs-nya mengandung Sirup, maka perintahnya adalah sebagai berikut.

# inspect(subset(mba, rhs %in% "Sirup"))
# Ini artinya kita akan filter rules dimana pada rhs memiliki item "Sirup".