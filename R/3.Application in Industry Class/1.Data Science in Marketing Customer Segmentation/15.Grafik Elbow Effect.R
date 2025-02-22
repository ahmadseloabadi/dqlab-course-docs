library(ggplot2)

#Bagian Data Preparation
pelanggan <- read.csv("https://storage.googleapis.com/dqlab-dataset/customer_segments.txt", sep="\t")
pelanggan_matrix <- data.matrix(pelanggan[c("Jenis.Kelamin", "Profesi", "Tipe.Residen")])
pelanggan <- data.frame(pelanggan, pelanggan_matrix)
Profesi <- unique(pelanggan[c("Profesi","Profesi.1")])
Jenis.Kelamin <- unique(pelanggan[c("Jenis.Kelamin","Jenis.Kelamin.1")])
Tipe.Profesi <- unique(pelanggan[c("Tipe.Residen","Tipe.Residen.1")])
pelanggan$NilaiBelanjaSetahun <- pelanggan$NilaiBelanjaSetahun/1000000
field_yang_digunakan = c("Jenis.Kelamin.1", "Umur", "Profesi.1", "Tipe.Residen.1","NilaiBelanjaSetahun")
#Bagian K-Means
set.seed(1)
sse <- sapply(1:10, function(param_k){kmeans(pelanggan[field_yang_digunakan], param_k, nstart=25)$tot.withinss})

jumlah_cluster_max <- 10
ssdata = data.frame(cluster=c(1:jumlah_cluster_max),sse)
ggplot(ssdata, aes(x=cluster,y=sse)) +
  geom_line(color="red") + geom_point() +
  ylab("Within Cluster Sum of Squares") + xlab("Jumlah Cluster") +
  geom_text(aes(label=format(round(sse, 2), nsmall = 2)),hjust=-0.2, vjust=-0.5) +
  scale_x_discrete(limits=c(1:jumlah_cluster_max))


# Teori
# Kali ini kita akan visualisasikan vector Sum of Squares (SS) atau Sum of Squared Errors (SSE) yang telah kita hasilkan pada praktek sebelumnya.

# Kita akan gunakan ggplot untuk visualisasi, datasetnya berupa penggabungan data frame dari sse dan range nilai 1:10, dengan perintah berikut.

# jumlah_cluster_max <- 10
# ssdata = data.frame(cluster=c(1:jumlah_cluster_max),sse)
# ggplot(ssdata, aes(x=cluster,y=sse)) +
#                 geom_line(color="red") + geom_point() +
#                 ylab("Within Cluster Sum of Squares") + xlab("Jumlah Cluster") +
#                 geom_text(aes(label=format(round(sse, 2), nsmall = 2)),hjust=-0.2, vjust=-0.5) +
#   scale_x_discrete(limits=c(1:jumlah_cluster_max))
# Berikut adalah gambaran grafik yang akan dihasilkan – dengan pasangan indikator nomor yang menunjukkan perintah dan komponen grafik yang dihasilkan. Sebagai contoh, penomoran nomor 1 yaitu  geom_line(color="red") menghasilkan grafik garis berwarna merah.



# Tugas Praktek

# Gantilah […] pada code editor code lengkap sapply di atas.

# penjelasan
# Terlihat jika jumlah cluster optimal yang bisa kita gunakan adalah 5, dan ini menjadi keputusan kita sebagai jumlah segmentasi pelanggan.

# Kesimpulan
# Dengan memanfaatkan nilai Sum of Squares (SS) atau Sum of Squared Errors (SSE) kita bisa mengambil keputusan jumlah segmentasi optimal yang kita gunakan.

# Ini dilakukan dengan membuat simulasi iterasi jumlah cluster dari 1 sampai dengan jumlah maksimum yang kita inginkan.  Pada contoh di bab ini, kita gunakan angka iterasi 1 sampai dengan 10.

# Setelah mendapatkan nilai SS dari tiap jumlah cluster, kita bisa plotting ke grafik garis dan menggunakan elbow method untuk menentukan jumlah cluster optimal.