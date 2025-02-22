library(arules)
transaksi <- read.transactions(file="https://storage.googleapis.com/dqlab-dataset/data_transaksi.txt", format="single", sep="\t", cols=c(1,2), skip=1)
mba <- apriori(transaksi,parameter = list(supp = 0.1, confidence = 0.5))
inspect(subset(mba, (lhs %ain% c("Pet Food", "Gula" ))))

# Teori
# Operator %in% yang sebelumnya kita gunakan sudah efektif. Namun operator ini tidak cocok jika kita ingin melakukan filter itemset dengan logika AND. Artinya seluruh item harus muncul dalam itemset yang terpilih. Untuk keperluan tersebut, gunakan operator %ain%.

# Contoh subset yang menggunakan %ain% adalah sebagai berikut.

# subset(mba, (lhs %ain% c("Pet Food", "Gula" )))

# Dan ekspresi inilah menjadi kunci untuk membuat rekomendasi.

# Tugas Praktek

# Tambahkan perintah pada code editor untuk melakukan filter dimana lhs memiliki item Gula dan Pet Food.

# penjelasan
# Hanya terdapat 1 rule sebagai hasil filter, dan dengan lift di atas 1 dan support 0.1 (10%) rule ini bisa dianggap layak untuk meghasilkan rekomendasi item, yaitu Sirup.

# Jadi orang yang membeli Gula dan Pet Food, bisa ditawarin Sirup.