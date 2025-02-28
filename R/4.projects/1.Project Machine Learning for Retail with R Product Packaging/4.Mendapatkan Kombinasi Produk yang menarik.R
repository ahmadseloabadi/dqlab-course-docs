library(arules)
nama_file <- "transaksi_dqlab_retail.tsv"
transaksi_tabular <- read.transactions(file=nama_file, format="single", sep="\t", cols=c(1,2), skip=1)
apriori_rules <- apriori(transaksi_tabular, parameter=list(supp=10/length(transaksi_tabular), conf=0.5, minlen=2, maxlen=3))
apriori_rules <- head(sort(apriori_rules, by='lift', decreasing = T),n=10)
inspect(apriori_rules)
write(apriori_rules, file="kombinasi_retail.txt")

# Tugas
# Setelah yakin Anda dapat melakukannya Pak Agus ingin Anda mengirimkan file yang berisi daftar 10 paket kombinasi produk yang paling "menarik".

# Anda pertamanya bingung, apa sih definisi menarik versi Pak Agus ini. Setelah wawancara intensif, ternyata pengertiannya adalah sebagai berikut:

# Memiliki asosiasi atau hubungan erat.
# Kombinasi produk minimal 2 item, dan maksimum 3 item.
# Kombinasi produk itu muncul setidaknya 10 dari dari seluruh transaksi.
# Memiliki tingkat confidence minimal 50 persen.
# Buatlah script R untuk menghasilkan daftar tersebut dan hasilnya disimpan ke dalam file kombinasi_retail.txt. Namun untuk menulis hasil dari rules yang akan tampak seperti di bawah ini, Anda tidak perlu melakukan konversi rules menjadi data.frame. Gunakan langsung fungsi write dengan syntax berikut:

# write(variable_untuk_rules, file="nama_file_yang_diinginkan.txt")
# Gunakan dataset transaksi_dqlab_retail.tsv pada saat membaca data.