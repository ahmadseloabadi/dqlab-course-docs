pelanggan <- read.csv("https://storage.googleapis.com/dqlab-dataset/customer_segments.txt",sep="\t")
pelanggan_matrix <- data.matrix(pelanggan[c("Jenis.Kelamin", "Profesi", "Tipe.Residen")])
pelanggan <- data.frame(pelanggan, pelanggan_matrix)
pelanggan$NilaiBelanjaSetahun = pelanggan$NilaiBelanjaSetahun/1000000
#Mengisi data master
Profesi <- unique(pelanggan[c("Profesi","Profesi.1")]) 
Jenis.Kelamin <- unique(pelanggan[c("Jenis.Kelamin","Jenis.Kelamin.1")]) 
Tipe.Residen <- unique(pelanggan[c("Tipe.Residen","Tipe.Residen.1")]) 


# Teori
# Setelah penggabungan data, kita jadi mengetahui sebenarnya teks kategori dikonversi menjadi angka numerik berapa.

# Sebagai contoh, jika kita menampilkan data kolom "Profesi" dan "Profesi.1" dengan perintah berikut.

# pelanggan[c("Profesi","Profesi.1")] 
# maka sebagian hasilnya akan tampil sebagai berikut.

#             Profesi Profesi.1
# 1        Wiraswasta         5
# 2           Pelajar         3
# 3      Professional         4
# 4      Professional         4
# 5        Wiraswasta         5
# 6      Professional         4
# 7        Wiraswasta         5
# 8      Professional         4
# 9      Professional         4
# 10     Professional         4
# 11     Professional         4
# 12     Professional         4
# 13       Wiraswasta         5
# 14       Wiraswasta         5
# 15       Wiraswasta         5
# ...
# 48       Wiraswasta         5
# 49 Ibu Rumah Tangga         1
# 50       Wiraswasta         5
 

# Kelihatan kalau Wiraswasta dikonversi menjadi angka 5, Pelajar menjadi angka 3, Professional menjadi angka 4, Ibu Rumah Tangga menjadi angka 1, dan satu lagi  adalah Mahasiswa yang dikonversi menjadi angka 2 (tidak terlihat disini).

# Daftar data kategori dan hasil konversinya sangat penting untuk dijadikan referensi sehingga nanti ketika ada data baru, kita bisa "petakan" menjadi data numerik yang siap digunakan untuk algoritma clustering.

# Nah, masalahnya data di atas terlalu panjang, padahal sebenarnya kita cuma perlu 5 baris data bukan? Di R, kita bisa meringkasnya dengan function unique.

# Contoh perintahnya adalah sebagai berikut:

# unique(pelanggan[c("Profesi","Profesi.1")])
# Hasilnya akan tampak sebagai berikut.

#             Profesi Profesi.1
# 1        Wiraswasta         5
# 2           Pelajar         3
# 3      Professional         4
# 17 Ibu Rumah Tangga         1
# 31        Mahasiswa         2
 

# Terlihat ya datanya sudah diringkas dengan teks kategori beserta pasangan numeriknya. Kemudian perhatikan juga angka-angka 1,2,3,17 dan 31 yang terdapat di bagian paling kiri. Ini menunjukkan posisi baris ditemukannya teks tersebut.

# Data ringkas dan unik ini untuk selanjutnya kita sebut sebagai data referensi atau data master.

 

# Tugas Praktek

# Gantilah tulisan […]pada editor dengan code yang sesuai.

# Buatlah tiga variable dengan nama Profesi, Jenis.Kelamin dan Tipe.Residen yang isinya berisi daftar unik dari pasangan kolom "Profesi" dan "Profesi.1", "Jenis.Kelamin" dan "Jenis.Kelamin.1", "Tipe.Residen" dan "Tipe.Residen.1".

# Kesimpulan
# Selamat, Anda sudah menjalankan praktek-praktek yang menjadi dasar dari semua hal sebelum penggunaan analisa data, yaitu tahap persiapan data atau data preparation.

# Untuk algoritma clustering k-means yang akan kita gunakan di R, maka tahap data preparationnya adalah menyiapkan data yang di dalamnya harus berisi numerik.

# Namun pada banyak kasus riil, data tidak sepenuhnya berisi numerik seperti telah kita lihat sendiri dan praktekkan dengan contoh dataset yang digunakan pada bab ini dengan langkah-langkah berikut:

# Mengenal Contoh File Dataset Pelanggan, dimana kita mengerti dulu bagaimana bentuk dan isi dari contoh yang digunakan.
# Membaca File dengan read.csv, dimana kita membaca suatu file teks dengan pemisah berupa tab menggunakan fungsi read.csv.
# Vector untuk Menyimpan Nama Field, dimana nama-nama field bisa disimpan dalam bentuk vector sehingga bisa digunakan berulang ketika kita buturh referensi nama-nama field yang sama.
# Konversi Data dengan data.matrix, dimana kita bisa melakukan konversi data dari kategori teks menjadi numerik.
# Menggabungkan Hasil Konversi, dimana hasil konversi ini perlu kita gabungkan kembali ke variable asal agar kita tidak kehilangan referensinya.
# Menormalisasikan Nilai Belanja, dimana kita merubah skala data nilai belanja dari jutaan menjadi puluhan dengan tujuan penyederhanaan perhitungan namun tidak mengurangi akurasi.
# Membuat Data Master, dimana kita meringkas data kategori dan numerik ke dalam variable-variable yang kita sebut sebagai data master.