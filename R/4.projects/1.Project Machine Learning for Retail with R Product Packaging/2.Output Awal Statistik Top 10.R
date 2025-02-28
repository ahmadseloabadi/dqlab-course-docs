library(arules)
data <- read.transactions(file="transaksi_dqlab_retail.tsv", format="single", sep="\t", cols=c(1,2), skip=1)
top_10 <- sort(itemFrequency(data, type="absolute"), decreasing = TRUE)[1:10]
hasil <- data.frame("Nama.Produk" = names(top_10), "Jumlah" = top_10, row.names = NULL)
write.csv(hasil, file="top10_item_retail.txt")

# Tugas
# Output Awal: Statistik Top 10
# Tahap pertama sebenarnya yang diinginkan oleh Pak Agus adalah melihat apakah Anda mampu memberikan info top 10 dari dataset transaksi yang diberikan.

# Buatlah script R untuk menghasilkan daftar tersebut, dan hasilnya disimpan ke dalam file top10_item_retail.txt

# Gunakan dataset transaksi_dqlab_retail.tsv pada saat membaca data.

# Hint: Gunakan kombinasi function itemFrequency, names, sort, dan data.frame.