pelanggan <- read.csv("https://storage.googleapis.com/dqlab-dataset/customer_segments.txt",sep="\t")
pelanggan_matrix <- data.matrix(pelanggan[c("Jenis.Kelamin", "Profesi", "Tipe.Residen")])
#Penggabungan data
pelanggan <- data.frame(pelanggan, pelanggan_matrix)
#Tampilkan kembali data hasil penggabungan
pelanggan


# Teori
# Setelah Anda bisa melakukan konversi ke angka, kita perlu mengetahui bagaimana menggabungkan kembali data tersebut ke variable asal kita.

# Ini berguna terutam apada praktek lanjutan di akhir course, yaitu ketika kita akan mengenali data pelanggan baru masuk ke segment mana.

# Untuk menggabungkan data hasil konversi data.matrix ke pelanggan, kita gunakan funtion data.frame.

# Sebagai contoh, untuk menggabungkan variable pelanggan dan pelanggan_matrix maka perintahnya adalah sebagai berikut.

# data.frame(pelanggan, pelanggan_matrix)

# Tugas Praktek

# Gantilah tulisan […]pada editor dengan code yang sesuai.

# Gabungkan variable pelanggan dan pelanggan_matrix dengan function data.frame dan masukkan kembali ke variable pelanggan.

# Catatan: Jika berhasil, maka isi penggabungan ini akan menambahkan kolom bernama "Jenis.Kelamin.1", "Profesi.1", dan "Tipe.Residen.1" yang sebelumnya tidak ada pada kedua variable seperti berikut.

#    Jenis.Kelamin.1 Profesi.1 Tipe.Residen.1

# 1                      1         5              2
# 2                      2         3              1
# 3                      1         4              1
# 4                      1         4              1
# 5                      2         5              1
# 6                      2         4              1
# 7                      1         5              2
# 8                      1         4              1
# 9                      2         4              2
# …
# …

# Akhiran .1 ini ditambahkan karena di variable pelanggan sudah ada nama kolom yang sama.

# Sebagai contoh kolom "Jenis.Kelamin" yang terdapat pada pelanggan_matrix sudah ada juga di variable pelanggan. Jadi ketika digabungkan, R akan menambahkan akhiran .1 untuk kolom "Jenis.Kelamin" yang terdapat di pelanggan_matrix.