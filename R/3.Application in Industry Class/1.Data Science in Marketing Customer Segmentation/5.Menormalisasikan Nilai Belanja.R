pelanggan <- read.csv("https://storage.googleapis.com/dqlab-dataset/customer_segments.txt", sep="\t")
pelanggan_matrix <- data.matrix(pelanggan[c("Jenis.Kelamin", "Profesi", "Tipe.Residen")])
pelanggan <- data.frame(pelanggan, pelanggan_matrix)
#Normalisasi Nilai
pelanggan$NilaiBelanjaSetahun <- pelanggan$NilaiBelanjaSetahun/1000000


# Teori
# Kali ini kita perhatikan kolom "NilaiBelanjaSetahun" isi datanya bernilai jutaan. Ketika kolom ini digunakan untuk clustering, perhitungan sum of squared errors (pada bab kmeans) akan menjadi sangat besar.

# Kita akan menormalisasikan nilainya agar perhitungan lebih sederhana dan mudah dicerna, namun tidak mengurangi akurasi. Ini terutama akan sangat bermanfaat jika jumlah data sangat banyak, misalkan memiliki 200 ribu data.

# Normalisasi bisa dilakukan dengan banyak cara. Untuk kasus kita, cukup dengan pembagian sehingga nilai jutaan menjadi puluhan.

# Mari kita langsung lakukan dengan mengerjakan praktek berikut.

# Tugas Praktek

# Gantilah tulisan […]pada editor dengan code yang sesuai.

# Isilah kolom NilaiBelanjaSetahun dengan nilai dari kolom itu sendiri dibagi dengan 1000000.