pelanggan <- read.csv("https://storage.googleapis.com/dqlab-dataset/customer_segments.txt",sep="\t")
#Konversi data menjadi numerik
pelanggan_matrix  <- data.matrix(pelanggan[c("Jenis.Kelamin", "Profesi", "Tipe.Residen")])


# Teori
# Seperti telah dijelaskan sebelumnya, isi data dari tiga kolom pelanggan yaitu "Jenis.Kelamin", "Profesi" dan "Tipe.Residen" merupakan data kategori yang berupa teks.

# Untuk fungsi k-means, ketiga kolom ini tidak bisa digunakan kecuali isi dikonversi menjadi numerik. Salah satu caranya adalah dengan menggunakan fungsi data.matrix.

# Perintahnya cukup sederhana, seperti terlihat pada contoh berikut.

# data.matrix(pelanggan[c("Jenis.Kelamin", "Profesi")])
# Perintah ini akan mengkonversi data pelanggan pada kolom "Jenis.Kelamin" dan "Profesi" yang diwakili oleh pelanggan[c("Jenis.Kelamin", "Profesi")] menjadi numerik.



# Terlihat, teks "Pria" diubah menjadi angka 1, "Wanita" diubah menjadi angka 2, "Wiraswasta" diubah menjadi angka 5, dan seterusnya.

# Tugas Praktek

# Gantilah tulisan […]pada editor dengan code yang sesuai.

# Buatlah variable pelanggan_matrix yang diisi dengan konversi teks menjadi numerik dari variable pelanggan pada kolom "Jenis.Kelamin", "Profesi", dan "Tipe.Residen".