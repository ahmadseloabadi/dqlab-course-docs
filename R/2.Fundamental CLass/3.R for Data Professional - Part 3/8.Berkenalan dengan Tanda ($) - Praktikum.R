#Konstruksi Dataframe
nama <- c("Kroma", "Andra", "Aksara", "Antara", "Senja")
pekerjaan <- c("Manager", "Senior Data Scientist", "Data Analyst", "Data Engineer", "Senior Data Analyst")
periode_kerja <- c(5,2,1,1,3)
df <- data.frame(nama,pekerjaan,periode_kerja)

#Tampilkan seluruh element pada kolom 'nama' dengan menggunakan $
df$nama

#Tampilkan seluruh element pada kolom 'pekerjaan' dengan menggunakan $
df$pekerjaan

#Tampilkan seluruh element pada kolom 'periode_kerja' dengan menggunakan $
df$periode_kerja

# Teori
# Untuk mengakses semua element yang ada pada satu kolom dengan jumlah Dataframe yang banyak, misalnya pada satu row terdapat 1.000.000 Dataframe maka agar tidak menuliskannya secara manual dapat menggunakan tanda $ untuk memilih kolom dari Dataframe.


# Penjelasan
# 1. Dari syntax di bawah ini, syntax manakah yang digunakan untuk menampilkan keseluruhan element dari suatu row?

# df[4,] digunakan untuk menampilkan keseluruhan informasi yang terdapat pada baris keempat dari suatu Dataframe


# 2. Dari syntax di bawah ini, syntax manakah yang digunakan untuk menampilkan keseluruhan element dari suatu column?

# df$nama_kolom digunakan untuk menampilkan keseluruhan informasi yang terdapat pada suatu kolom bernama nama_kolom (sesuai dengan yang mengikuti tanda $)


# “Kamu memang hebat Nyi, kamu berhasil menyelesaikan soal-soal ini dengan benar. Percaya deh, kamu bisa mengelola data klien dengan baik jika kamu tetap tekun dalam mempelajari materi ini,” puji Andra.

# Aku sangat senang mendengar respons Andra, semangatku untuk belajar semakin bertambah. “Oke, aku lanjut belajar materi selanjutnya ya!”