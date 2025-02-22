library(arules)
transaksi <- read.transactions(file="https://storage.googleapis.com/dqlab-dataset/data_transaksi.txt", format="single", sep="\t", cols=c(1,2), skip=1)
mba <- apriori(transaksi,parameter = list(supp = 0.1, confidence = 0.5))
inspect(subset(mba, lhs %in% "Teh Celup" | rhs %in% "Teh Celup"))


# Teori
# Dengan 16 rules yang dihasilkan, kita bisa memiliki lebih banyak pilihan untuk melakukan filter lhs dan rhs seperti yang telah ditunjukkan pada bab Itemset and Rules.

# Berikut adalah contoh untuk filter dimana lhs atau rhs keduanya memiliki item Teh Celup.

# subset(mba, lhs %in% "Teh Celup" | rhs %in% "Teh Celup")

 

# Tugas Praktek

# Tambahkan perintah pada code editor menampilkan rules yang telah difilter berdasarkan lhs atau rhs yang memiliki item Teh Celup.