#Membaca data csv dan dimasukkan ke variable pelanggan
pelanggan <- read.csv("https://storage.googleapis.com/dqlab-dataset/customer_segments.txt", sep="\t")
pelanggan_matrix <- data.matrix(pelanggan[c("Jenis.Kelamin", "Profesi", "Tipe.Residen")])
pelanggan <- data.frame(pelanggan, pelanggan_matrix)
pelanggan$NilaiBelanjaSetahun = pelanggan$NilaiBelanjaSetahun/1000000
Profesi <- unique(pelanggan[c("Profesi","Profesi.1")])
Jenis.Kelamin <- unique(pelanggan[c("Jenis.Kelamin","Jenis.Kelamin.1")])
Tipe.Residen <- unique(pelanggan[c("Tipe.Residen","Tipe.Residen.1")])

#Bagian K-Means
set.seed(1)
field_yang_digunakan = c("Jenis.Kelamin.1", "Umur", "Profesi.1", "Tipe.Residen.1","NilaiBelanjaSetahun")
segmentasi <- kmeans(x=pelanggan[field_yang_digunakan], centers=5, nstart=25)
Segmen.Pelanggan <- data.frame(cluster=c(1,2,3,4,5), Nama.Segmen=c("Silver Youth Gals", "Diamond Senior Member", "Gold Young Professional", "Diamond Professional", "Silver Mid Professional"))

Identitas.Cluster <- list(Profesi=Profesi, Jenis.Kelamin=Jenis.Kelamin, Tipe.Residen=Tipe.Residen, Segmentasi=segmentasi, Segmen.Pelanggan=Segmen.Pelanggan, field_yang_digunakan=field_yang_digunakan) 
saveRDS(Identitas.Cluster,"cluster.rds")


# Teori
# Objek yang sudah digabungkan pada praktek sebelumnya sudah memiliki semua aset yang diperlukan untuk mengalokasikan data baru ke segmen yang sesuai.

# Untuk menyimpan objek ini ke dalam file kita gunakan function saveRDS. File ini kemudian dapat dibuka kembali sebagai objek ke depannya.

# Sebagai contoh, perintah untuk menyimpan objek Identitas.Cluster ke file cluster.rds adalah sebagai berikut.

# saveRDS(Identitas.Cluster,"cluster.rds")
# Kita akan menjalankan perintah ini pada tugas berikut.

# Tugas Praktek

# Isi bagian […] dengan perintah saveRDS seperti contoh di atas.

# Kesimpulan
# Pada penutup bab ini, Anda sudah menggabungkan seluruh aset yang diperlukan untuk membentuk suatu model.

# Model ini adalah objek yang bisa digunakan untuk mengolah data baru dan terdiri dari objek kmeans, variable referensi hasil konversi teks ke numerik, dan juga penamaan cluster.