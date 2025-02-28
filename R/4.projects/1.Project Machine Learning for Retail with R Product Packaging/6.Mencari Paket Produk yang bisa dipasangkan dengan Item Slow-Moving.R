library(arules)

nama_file <- "transaksi_dqlab_retail.tsv"
transaksi_tabular <- read.transactions(file=nama_file, format="single", sep="\t", cols=c(1,2), skip=1)
jumlah_transaksi<-length(transaksi_tabular)
jumlah_kemunculan_minimal <- 10
apriori_rules <- apriori(
  transaksi_tabular,
  parameter= list(supp=jumlah_kemunculan_minimal/jumlah_transaksi,
                  conf=0.1, minlen=2, maxlen=3))

# Filter
apriori_rules1 <- subset(apriori_rules, lift > 1 & rhs %in% "Tas Makeup")
apriori_rules1 <- sort(apriori_rules1, by='lift', decreasing = T)[1:3]
apriori_rules2 <- subset(apriori_rules, lift > 1 & rhs %in% "Baju Renang Pria Anak-anak")
apriori_rules2 <- sort(apriori_rules2, by='lift', decreasing = T)[1:3]
apriori_rules <- c(apriori_rules1, apriori_rules2)
inspect(apriori_rules)
write(apriori_rules,file="kombinasi_retail_slow_moving.txt")