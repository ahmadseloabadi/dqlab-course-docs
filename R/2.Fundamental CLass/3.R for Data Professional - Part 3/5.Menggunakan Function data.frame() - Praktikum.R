#Buatlah vector sesuai dengan instruksi yang sudah diberikan
nama <- c("Kroma", "Andra", "Aksara", "Antara", "Senja")
pekerjaan <- c("Manager", "Senior Data Scientist", "Data Analyst", "Data Engineer", "Senior Data Analyst")
periode_kerja <- c(5, 2, 1, 1, 3)

#Gabungkan ketiga vector menjadi sebuah Dataframe menggunakan data.frame()
df <- data.frame(nama, pekerjaan, periode_kerja)
df

#cek apakah variable df merupakan Dataframe
is.data.frame(df)

# Teori
# Untuk melakukan konversi object menjadi Dataframe, function yang dapat digunakan adalah as.data.frame(). Sementara itu, is.data.frame() digunakan untuk melakukan pengecekan apakah sebuah object merupakan Dataframe atau bukan.
# Selain function yang dapat mengubah object menjadi Dataframe, terdapat function lain yang dapat membuat Dataframe sendiri dari awal dengan menggunakan function data.frame(), lho! Seperti contoh, seorang praktisi data ingin membuat Dataframe yang berisi nama pegawai tetap DQ Corp, jabatan, beserta periode kerjanya masing-masing.


# Tugas
# Untuk memahami ini, aku membuka data pegawai yang kuperoleh dari website perusahaan. Informasi mengenai karyawan DQLab adalah sebagai berikut :

# Kroma sudah bekerja sebagai Manager selama 5 tahun
# Andra merupakan seorang Senior Data Scientist yang sudah bekerja selama 2 tahun
# Aksara merupakan seorang Data Analyst yang sudah bekerja selama 1 tahun
# Antara merupakan seorang Data Engineer yang sudah bekerja selama 1 tahun
# Senja merupakan seorang Senior Data Analyst yang sudah bekerja selama 3 tahun
# Setelah melihat informasi karyawan DQLab, aku kembali membaca instruksi dari modul yang mengatakan untuk melakukan tahap selanjutnya perlu membuat 3 buah vector yang berisi nama, pekerjaan, dan periode kerja dari masing-masing orang.