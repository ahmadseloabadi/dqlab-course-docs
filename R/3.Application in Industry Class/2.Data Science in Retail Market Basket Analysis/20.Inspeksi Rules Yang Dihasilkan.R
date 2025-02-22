library(arules)
transaksi <- read.transactions(file="https://storage.googleapis.com/dqlab-dataset/data_transaksi.txt", format="single", sep="\t", cols=c(1,2), skip=1)
mba <- apriori(transaksi,parameter = list(supp = 0.1, confidence = 0.5))
inspect(mba)

# Teori
# Dengan pengetahuan kita dari bab sebelumnya, menggunakan function kita bisa menggali informasi detil dari rules dengan inspect.

# Tugas Praktek

# Tambahkan perintah pada code editor untuk menyimpan association rules ke dalam variable mba dan tampilkan isinya dengan function inspect.