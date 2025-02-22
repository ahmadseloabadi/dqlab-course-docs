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
#fungsi kmeans untuk membentuk 5 cluster dengan 25 skenario random dan simpan ke dalam variable segmentasi
segmentasi <- kmeans(x=pelanggan[c("Umur","Profesi.1")], centers=3)
#tampilkan hasil k-means
segmentasi


# Teori
# Praktek kali ini kita akan melakukan segmentasi langsung pada data pelanggan – yang telah kita lakukan persiapan datanya pada bab sebelumnya – dengan menggunakan function kmeans.

#  Function kmeans memerlukan minimal 2 parameter, yaitu:

# x: data yang digunakan, dimana semua isi datanya harus berupa numerik.
# centers: jumlah cluster yang diinginkan.
 

# Dan fungsi kmeans ini biasanya disertai dengan pemanggilan function seet.seed. Ini berguna agar kita "menyeragamkan" daftar nilai acak yang sama dari kmeans sehingga kita mendapatkan output yang sama.

# Berikut adalah contoh penggunaan fungsi kombinasi set.seed dan kmean.

# set.seed(1)
# kmeans(x=pelanggan[c("Umur","Profesi.1")], centers=3)
# Ini artinya kita membagi data pelanggan berdasarkan "Umur" dan "Profesi" menjadi 3 segmen.

# Kadang kala berdasarkan pengalaman DQLab, parameter data dan jumlah segmen saja tidak cukup. Perlu digunakan parameter ketiga yaitu nstart, yang merupakan jumlah kombinasi acak yang dihasilkan secara internal oleh R. Berdasarkan jumlah yang diberikan, algoritma akan memilih mana yang terbaik dari kombinasi-kombinasi tersebut.

# Kata terbaik berarti jarak antara tiap titik ke mean dari clusternya sendiri lebih kecil dibandingkan ke mean dari cluster lain.

# Perlu untuk diingat bahwa mean atau nilai rata-rata di sini sering disebut juga dengan centroid pada berbagai literatur data science.

 

# Berikut adalah modifikasi pemanggilan fungsi dengan parameter tambahan nstart sebesar 25.

# kmeans(x=pelanggan[c("Umur","Profesi.1")], centers=3, nstart=25)
 

# Tugas Praktek

# Code editor telah dilengkapi dengan potongan code untuk data preparation, dan kita perlu melengkapi […] dengan fungsi kmeans.

# Sesuai contoh pada Lesson, lengkapi fungsi kmeans tersebut dengan:

# x: berisi data pelanggan dengan field-field yang diambil dari vector field_yang_digunakan (sudah didefinisikan di potongan code)
# centers: jumlah segmen / cluster yang kita inginkan. Isi dengan 5.
# nstart: isi dengan angka 25

# penjalasan

# Hasil ini dapat dibagi dalam lima bagian, dengan penjelasan sesuai nomor urut pada gambar sebagai berikut:

# Ukuran / jumlah titik data pada tiap cluster
# Nilai rata-rata (centroid) dari tiap cluster
# Pembagian cluster dari tiap elemen data berdasarkan posisinya
# Jumlah jarak kuadrat dari tiap titik ke centroidnya
# Komponen informasi lain yang terkandung di dalam objek kmeans ini