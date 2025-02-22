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
segmentasi$withinss
segmentasi$cluster
segmentasi$tot.withinss


# Teori
# Analisa terakhir kita dari code adalah bagian kelimat, yaitu sembilan komponen objek yang bisa kita gunakan untuk lihat detil dari objek k-means.

# Berikut adalah penjelasan singkat dari sembilan komponen tersebut.

# Komponen            Deskripsi                   Contoh
# cluster             Vector dari cluster untuk   [1] 2 1 5 5 4 1 2 5 3 3 5 5 2 2 1 3 3 2 3
#                     tiap titik data

# centers             Merupakan informasi titik   Lihat contoh pada "Analisa Hasil Cluster Means"
#                     centroid dari tiap cluster, 
#                     seperti pada bagian "Analisa
#                     Hasil Cluster Means"

# totss               Total Sum of Squares (SS)   [1] 10990.97
#                     untuk seluruh titik data

# withinss            Total Sum of Squares        [1] 316.73367  58.21123 174.85164 171.67372 108.49735
#                     per cluster

# tot.withinss        Total penjumlahan dari      [1] 829.9676
#                     tiap SS dari withinss

# betweenss           Perbedaan nilai antara      [1] 10161.01
#                     totss dan tot.withinss

# size                Jumlah titik data pada      [1] 14  5 12  9 10
#                     tiap cluster

# iter                Jumlah iterasi luar yang    2
#                     digunakan oleh kmeans

# ifault              Nilai integer yang          0 jika tidak ada masalah
#                     menunjukkan indikator 
#                     masalah pada algoritma

# Seluruh komponen tersebut bisa diakses dengan menggunakan aksesor $. Contoh, dengan variable kmeans kita bernama segmentasi dan kita ingin mengakses komponen withinss, maka kita bisa gunakan perintah berikut yang sudah terdapat pada code editor.

# segmentasi$withinssr
# Jika dieksekusi maka Anda akan mendapatkan hasil berikut.

# [1] 316.73367  58.21123 174.85164 171.67372 108.49735

# Tugas Praktek

# Ganti […] dengan 2 perintah untuk mengambil komponen cluster dan tot.withinss dari variable segmentasi.

# Kesimpulan
# Pada bab ini Anda telah menyelesaikan penggunaan algoritma K-Means dengan function kmeans dari dataset yang telah dipersiapkan pada bab kedua.

# Function kmeans sederhana digunakan tapi outputnya memiliki informasi yang kaya yaitu:

# Ukuran / jumlah titik data pada tiap cluster
# Nilai rata-rata (centroid) dari tiap cluster
# Vector item dari cluster
# Jumlah jarak kuadrat dari tiap titik ke centroidnya (Sum of Squares atau SS)
# Komponen-komponen informasi lain
# Dengan menganalisa hasil output ini, kita mampu menggabungkan nomor cluster ke data asal. Selain itu kita juga mengetahui bagaimana kedekatan tiap titik data dari clusternya sehingga menjadi bekal kita untuk menentukan jumlah cluster yang optimal.