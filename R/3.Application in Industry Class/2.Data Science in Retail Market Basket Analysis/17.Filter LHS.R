library(arules)
transaksi <- read.transactions(file="https://storage.googleapis.com/dqlab-dataset/data_transaksi.txt", format="single", sep="\t", cols=c(1,2), skip=1)
mba <- apriori(transaksi)
inspect(subset(mba, lhs %in% "Gula"))


# Teori
# Filter dari praktek sebelumnya hanya berfokus kepada rhs, tentunya bisa juga dengan lhs.

# Berikut adalah contoh perintah inspect untuk filter lhs dengan item Gula.

# inspect(subset(mba, lhs %in% "Gula"))

# Tugas Praktek

# Tambahkan pada code editor perintah untuk melakukan filter objek mba dimana itemset pada sisi lhs memiliki item Gula.