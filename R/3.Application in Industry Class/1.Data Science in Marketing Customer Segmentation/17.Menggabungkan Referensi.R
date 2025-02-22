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

#Menggabungkan seluruh aset ke dalam variable Identitas.Cluster
Identitas.Cluster <- list(Profesi=Profesi,Jenis.Kelamin=Jenis.Kelamin,Tipe.Residen=Tipe.Residen,Segmentasi=segmentasi,Segmen.Pelanggan=Segmen.Pelanggan,field_yang_digunakan=field_yang_digunakan)


# Teori
# Sejauh ini kita telah mempelajari pembentukan aset-aset data sebagai berikut:

# Dataset pelanggan yang telah "diperkaya" dengan tambahan kolom hasil konversi teks menjadi numerik, dan menormalisasikan field NilaiBelanjaSetahun.
# Objek kmeans dengan k=5, dipilih berdasarkan metodologi menggunakan metrik Sum of Squares (SS).
# Membuat variable referensi atau pemetaan numerik dan teks asli (kategori) dari kolom Jenis Kelamin, Profesi dan Tipe Residen.
# Variable data.frame dengan nama Pelanggan yang berisi penamaan cluster sesuai analisa karakteristik dari centroid kolom-kolom pelanggan yang digunakan.
# Vector dari field yang digunakan.
# Akan sangat baik jika semuanya digabungkan di satu variable dengan tipe list, dan ini akan jadi model kita yang dapat disimpan ke dalam file dan digunakan ketika diperlukan.

# Pada tugas berikut, kita akan namakan list ini dengan Identitas.Cluster. Perintahnya adalah sebagai berikut:

# Identitas.Cluster <- list(Profesi=Profesi, Jenis.Kelamin=Jenis.Kelamin, Tipe.Residen=Tipe.Residen, Segmentasi=segmentasi, Segmen.Pelanggan=Segmen.Pelanggan, field_yang_digunakan=field_yang_digunakan)
# Tugas Praktek

# Buatlah variable Identitas.Cluster dengan mengganti bagian […] ini dengan perintah seperti pada contoh di atas, kemudian isinya.