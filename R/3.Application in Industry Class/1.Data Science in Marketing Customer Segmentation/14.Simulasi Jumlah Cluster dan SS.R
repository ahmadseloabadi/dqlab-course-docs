#Bagian Data Preparation
pelanggan <- read.csv("https://storage.googleapis.com/dqlab-dataset/customer_segments.txt", sep="\t")
pelanggan_matrix <- data.matrix(pelanggan[c("Jenis.Kelamin", "Profesi", "Tipe.Residen")])
pelanggan <- data.frame(pelanggan, pelanggan_matrix)
Profesi <- unique(pelanggan[c("Profesi","Profesi.1")])
Jenis.Kelamin <- unique(pelanggan[c("Jenis.Kelamin","Jenis.Kelamin.1")])
Tipe.Profesi <- unique(pelanggan[c("Tipe.Residen","Tipe.Residen.1")])
pelanggan$NilaiBelanjaSetahun <-pelanggan$NilaiBelanjaSetahun/1000000
field_yang_digunakan = c("Jenis.Kelamin.1", "Umur", "Profesi.1", "Tipe.Residen.1","NilaiBelanjaSetahun")
#Bagian K-Means
set.seed(1)
sse <- sapply(1:10, function(param_k) {kmeans(pelanggan[field_yang_digunakan], param_k, nstart=25)$tot.withinss})
sse

# Teori
# Metrik elbow method yang digunakan sebagai basis justifikasi adalah Sum of Squares (SS), atau lebih tepatnya komponen tot.withinss dari objek kmeans.

# Metrik ini akan dicari progressive nilai tot.withinss untuk tiap kombinasi jumlah cluster, dan disimpan dalam bentuk vector di R.

# Untuk keperluan ini, kita akan gunakan sapply. Function sapply akan digunakan untuk memanggil function kmeans untuk suatu range jumlah cluster. Range ini akan kita gunakan 1 sampai dengan 10.

# Code lengkapnya sebagai berikut:

# sse <- sapply(1:10,
# function(param_k)
# {
# kmeans(pelanggan[field_yang_digunakan], param_k, nstart=25)$tot.withinss
# }
# )
# Berikut adalah penjelasan lengkap elemen-elemen perintah di atas

# Komponen                                Deskripsi

# sse                                     Nama variable yang akan digunakan untuk menyimpan nilai tot.withinss dari tiap objek kmeans

# sapply                                  Merupakan function yang digunakan untuk menghasilkan vector dari iterasi (looping) dari eksekusi fungsi tertentu (pada kasus ini: kmeans) dengan nilai range yang diberikan

# 1:10                                    Range jumlah cluster dari 1 sampai dengan 10

# param_k                                 Parameter yang akan berisi nilai 1 sampai dengan 10, sesuai range di atas

# kmeans(pelanggan[field_yang_digunakan]  Fungsi kmeans yang dipanggil sebanyak nilai range 1 sampai dengan 10 (param_k) dari dataset pelanggan
#  param_k, nstart=25)

# $tot.withinss                           Total penjumlahan dari tiap SS dari withinss

# Mari kita coba perintah di atas dengan tugas praktek berikut.



#  Tugas Praktek
# Gantilah […] pada code editor dengan code lengkap sapply di atas, dan tambahkan juga perintah untuk melihat isi variable sse.