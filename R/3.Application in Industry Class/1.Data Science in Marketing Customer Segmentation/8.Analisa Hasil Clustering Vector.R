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

#Penggabungan hasil cluster

segmentasi$cluster

pelanggan$cluster <- segmentasi$cluster

str(pelanggan)



# Teori
# Clustering vector ini adalah rangkaian vector yang berisi angka cluster. Dari hasil kita, vector berisi angka 1 sampai dengan 5, maksimum sesuai dengan jumlah cluster yang kita inginkan.

# Vector ini dimulai dari angka 2, yang artinya data pertama dari dataset kita akan dialokasikan pada nomor cluster 2. Dari gambar juga terlihat isi vector kedua bernlai 1, ini artinya data kedua dari dataset kita dialokasikan pada nomor cluster 1, dan seterusnya. Posisi data terakhir (ke-50) memiliki nomor cluster 5.

# Hasil ini dapat diakses dengan komponen cluster dari objek hasil seperti berikut:

# segmentasi$cluster
# Ini akan mendapatkan hasil yang sama dengan gambar di atas.

# Tugas Praktek

# Nah, sekarang tugas kita adalah menambahkan hasil segmentasi ini ke data asal. Caranya cukup gampang, yaitu dengan cara membuat kolom baru (kita namakan cluster) di variable pelanggan yang isinya dari segmentasi$cluster.

# Ketik perintah berikut pada bagian code editor setelah bagian komentar #Penggabungan hasil cluster

# pelanggan$cluster <- segmentasi$cluster
# Kemudian tampilkan struktur dari data pelanggan dengan perintah str.