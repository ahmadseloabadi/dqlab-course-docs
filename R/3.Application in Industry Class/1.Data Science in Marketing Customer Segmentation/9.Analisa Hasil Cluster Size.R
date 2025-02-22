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
segmentasi <- kmeans(x=pelanggan[field_yang_digunakan], centers=5, nstart=25)
pelanggan$cluster <- segmentasi$cluster
#Analisa hasil
#Filter cluster ke-1
which(pelanggan$cluster == 1)
length(which(pelanggan$cluster == 2))

# Teori
# Tahap berikutnya, Kita akan analisa hasil pada bagian pertama

# K-means clustering with 5 clusters of sizes 14, 5, 9, 12, 10
# Ini artinya dengan k-means kita telah membagi dataset pelanggan dengan 5 cluster, dimana:

# Cluster ke-1 memiliki 14 data
# Cluster ke-2 memiliki 5 data
# Cluster ke-3 memiliki 9 data
# Cluster ke-4 memiliki 12 data
# Cluster ke-5 memiliki 10 data
# Dengan jumlah total 50 data, yang juga merupakan jumlah data total pelanggan.

# Mari kita verifikasi hal tersebut dengan memulai dari cluster 1. Ambil data pelanggan yang isi dari kolom clusternya adalah 1 dengan menggunakan fungsi which, seperti perintah berikut pada live code editor di bawah komentar #Filter cluster ke-1.

# which(pelanggan$cluster == 1)
# Anda seharusnya dapatkan hasil sebagai berikut:

# [1]  2  6 15 20 31 33 34 37 39 40 41 44 45 46 
# Hasil di atas menunjukkan 14 angka posisi data untuk cluster 1. Banyaknya angka pada deretan ini sesuai ukuran untuk cluster ke-1 dari informasi di atas.

# Sekarang cobalah hitung jumlah deretan dengan menambahkan perintah length pada fungsi which seperti berikut:

# length(which(pelanggan$cluster == 1))
# Jika dijalankan maka akan didapatkan angka 14.

# Tugas

# Tampilkan ukuran cluster ke-2 dari pelanggan