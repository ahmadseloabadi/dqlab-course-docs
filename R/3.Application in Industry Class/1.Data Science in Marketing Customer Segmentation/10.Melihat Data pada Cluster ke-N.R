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
#Melihat data cluster ke 3-5
pelanggan[which(pelanggan$cluster == 3),] 
pelanggan[which(pelanggan$cluster == 4),] 
pelanggan[which(pelanggan$cluster == 5),]


# Teori
# Sejauh ini, kita belum melihat data hasil cluster. Pastinya, penasaran untuk melihat hasil tersebut, bukan?

# Ini dapat dihasilkan dengan cukup mudah setelah kita ikuti praktek sebelumnya, dimana hasil cluster telah diintegrasikan dan juga mengerti cara filter baris-baris data (data rows) dengan which.

# Berikut adalah perintah yang dapat diketikkan pada code editor (di bawah comment #Melihat data cluster ke-1) untuk melihat seluruh data pada cluster ke-1

# pelanggan[which(pelanggan$cluster == 1),] Jika berhasil dieksekusinya, hasilnya akan terlihat sebagai berikut. 



# dimana ada 14 data denangan seluruh data berjenis kelamin wanita dan umur antara 14 s/d 25 tahun. Penghasilan, profesi, nilai belanja dan tipe residen cukup bervariasi.

# Dan ubahlah perintah untuk melihat cluster ke-2.

# pelanggan[which(pelanggan$cluster == 2),] 

# Akan tampil data sebagai berikut, dimana terlihat umur mayoritas sudah masuk usia 50 tahun ke atas dan kebanyakan adalah wiraswasta kecuali satu yang ibu rumah tangga. Dan rata-rata nilai belanja adalah sekitar 9 juta, kecuali yang berprofesi ibu rumah tangga.



# Menarik bukan pembagian dari algoritmanya?

# Tugas Praktek

# Gantilah bagian […] dengan tiga perintah untuk melihat cluster nomor 3 sampai dengan 5.