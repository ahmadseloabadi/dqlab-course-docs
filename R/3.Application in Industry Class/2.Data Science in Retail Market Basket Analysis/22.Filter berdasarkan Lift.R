library(arules)
transaksi <- read.transactions(file="https://storage.googleapis.com/dqlab-dataset/data_transaksi.txt", format="single", sep="\t", cols=c(1,2), skip=1)
mba <- apriori(transaksi,parameter = list(supp = 0.1, confidence = 0.5))
inspect(subset(mba, (lhs %in% "Teh Celup" | rhs %in% "Teh Celup") & lift>1))

# Teori
# Kita bisa melakukan filter terhadap metrik kualitas dari association rules: support, confidence dan lift dengan function subset. Function yang sama untuk melakukan filter terhadap lhs dan rhs.

# Bedanya adalah karena angka, maka untuk ketiga metrik tersebut kita gunakan operator perbandingan angka.

# Sebagai contoh, untuk melakukan filter terhadap objek mba dengan kondisi berikut:

# lhs atau rhs memiliki Teh Celup
# lift di atas 1
# maka perintahnya adalah sebagai berikut

# subset(mba, (lhs %in% "Teh Celup" | rhs %in% "Teh Celup") & lift>1)

# Perhatikan untuk ekspresi lhs dan rhs ditutup dengan kurung sebelum digabungkan dengan kondisi lift.

# Tugas Praktek

# Tambahkan perintah pada code editor untuk melakukan filter dimana lhs atau rhs memiliki item Teh Celup.

# penjelasan
# Hanya terdapat 1 rule sebagai hasil filter dan paket produk ini cukup menjanjikan, dimana Teh Celup menjadi komponen dari itemset di lhs.

