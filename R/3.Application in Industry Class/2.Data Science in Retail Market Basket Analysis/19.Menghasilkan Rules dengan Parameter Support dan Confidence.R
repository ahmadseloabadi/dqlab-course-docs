library(arules)
transaksi <- read.transactions(file="https://storage.googleapis.com/dqlab-dataset/data_transaksi.txt", format="single", sep="\t", cols=c(1,2), skip=1)
apriori(transaksi,parameter = list(supp = 0.1, confidence = 0.5))


# Teori
# Pada bab sebelumnya, kita menghasilkan tiga rules dengan function apriori secara default tanpa parameter apapun. Padahal sebenarnya kita bisa memasukkan parameter tambahan berupa support dan confidence.

# Tanpa parameter tambahan tersebut, maka nilai minimum support adalah 0.1 dan minimum confidence adalah 0.8 sebagai filter dari function apriori.

# Berikut adalah perintah untuk menghasilkan kembali association rules dengan function apriori, tapi kali ini dengan tambahan parameter minimum support dan confidence masing-masing bernilai 0.1 dan 0.5.

# apriori(transaksi,parameter = list(supp = 0.1, confidence = 0.5))

# Tugas Praktek

# Tambahkan perintah pada code editor untuk menghasilkan rule dengan tingkat support minimum 0.1 dan minimum confidence 0.5.