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
#Melihat cluster means dari objek 
segmentasi$centers


# Teori
# Cluster means adalah hasil nilai rata-rata atau titik sentral (centroid) dari seluruh titik tiap cluster.



# Apa artinya hasil tersebut?

# Kolom pertama yang berisi angka 1 sampai dengan 5 adalah mewakili nomor cluster.
# Kolom Kelamin.1 menunjukkan nilai rata-rata dari data jenis kelamin yang telah dikonversi menjadi numerik, dengan angka 1 mewakili Pria dan angka 2 mewakili wanita.
 

# Pada cluster 1 terlihat bahwa hanya ada angka 2, artinya cluster 1 hanya berisi data dengan profil berjenis kelamin wanita. Nah, untuk cluster ke-2 berupa angka 1.40 artinya data bersifat campuran namun cenderung ke Pria (1).

# Kedua interpretasi angka ini sesuai dengan hasil praktek "Melihat Data pada Cluster-N".

 

# Kolom Umur adalah representasi dari dataset awal tanpa mengalami konversi. Terlihat untuk cluster ke-1 umur rata-rata adalah 20 tahun, umur 61 tahun untuk cluster ke-2, dan seterusnya.
 

# Kolom Profesi.1 menunjukkan nilai rata-rata data Profesi untuk tiap cluster yang telah dikonversi menjadi numerik, yaitu angka 1 s/d 5.

# Angka 1, 2, 3, 4, dan 5 di kolom ini masing-masingnya secara berurutan mewakili Ibu Rumah Tangga, Mahasiswa, Pelajar, Professional, dan Wiraswasta. Terlihat untuk seluruh cluster bahwa nilai profesi berada dalam rentang 3.5 s/d 4.2 (3.5< profesi <= 4.2). Hal ini menunjukkan bahwa profesi cenderung ke ke Professional, dan secara tegas cluster keempat memiliki profesi berupa Professional.
 

# Kolom Tipe.Residen.1 menunjukkan representasi data Tipe.Residen yang telah dikonversi menjadi numerik dengan angka 1 mewakili Cluster dan 2 mewakili Sector. Ini juga didapatkan dari hasil konversi data menjadi numerik pada praktek sebelumnya.

# Untuk seluruh cluster, terlihat data cukup tersebar antara Sector dan Cluster terutama untuk cluster ke-4 dimana nilai kolom ini di angka 1.555.
 

# Terakhir, kolom NilaiBelanjaSetahun cukup signifikan pembagiannya untuk tiap cluster. Cluster ke-2 dan ke-4 memiliki nilai belanja lebih tinggi dibandingkan ketiga cluster lainnya.
 

# Ini mungkin target customer yang bisa lebih disasar melalui marketing campaign, karena cluster ke-2 saat ini hanya berisi 5 data. Cukup kecil proporsinya, dan ingin ditingkatkan.

# Ini terlihat dari hasil output kmeans bagian pertama yang menunjukkan distribusi jumlah data dari tiap cluster:

# K-means clustering with 5 clusters of sizes 14, 5, 9, 12, 10

 

# Tugas Praktek

# Cobalah melihat hasil dari cluster means ini dengan langsung mengakses variable segmentasi pada komponen centers.