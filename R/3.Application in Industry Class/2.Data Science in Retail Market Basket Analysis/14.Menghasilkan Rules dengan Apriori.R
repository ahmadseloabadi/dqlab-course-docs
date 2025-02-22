library(arules)
transaksi <- read.transactions(file="https://storage.googleapis.com/dqlab-dataset/data_transaksi.txt", format="single", sep="\t", cols=c(1,2), skip=1)

#Menghasilkan associaton rules
apriori(transaksi)

# Teori
# Saatnya kita menghasilkan rule dari transaksi kita. Seperti dijelaskan pada bab tiga, rule adalah formula yang menyatakan kombinasi dari dua itemset. Satu itemset ada di bagian kiri rule (left hand side) dan satunya di bagian kanan (right hand side) dalam format berikut.

# {itemset lhs} => {itemset rhs}
# Untuk menghasilkan rule ini, kita gunakan fungsi apriori dengan syntax berikut.

# apriori(transaksi)
# Tambahkan perintah ini pada code editor - di bawah comment "#Menghasilkan associaton rules" 