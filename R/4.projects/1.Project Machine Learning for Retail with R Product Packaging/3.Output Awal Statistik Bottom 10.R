library(arules)
data <- read.transactions(file="transaksi_dqlab_retail.tsv", format="single", sep="\t", cols=c(1,2), skip=1)
top_10 <- sort(itemFrequency(data, type="absolute"), decreasing = FALSE)[1:10]
hasil <- data.frame("Nama.Produk" = names(top_10), "Jumlah" = top_10, row.names = NULL)
write.csv(hasil, file="bottom10_item_retail.txt")

# Tugas
# Tahap berikutnya adalah Anda harus bisa memberikan informasi bottom 10 dari dataset transaksi yang diberikan.

# Tahap pertama sebenarnya yang diinginkan oleh Pak Agus adalah melihat apakah Anda mampu memberikan info top 10 dari dataset transaksi yang diberikan.

# Buatlah script R untuk menghasilkan daftar tersebut, dan hasilnya disimpan ke dalam file bottom10_item_retail.txt.

# Gunakan dataset transaksi_dqlab_retail.tsv pada saat membaca data.