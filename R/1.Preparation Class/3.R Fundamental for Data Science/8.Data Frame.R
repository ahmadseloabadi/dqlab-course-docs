#Membuat dua variable vector
fakultas <- c("Bisnis", "D3 Perhotelan", "ICT", "Ilmu Komunikasi", "Seni dan Desain")
jumlah_mahasiswa <- c(260, 28, 284, 465, 735)

#Membuat data frame dari kedua vector di atas
info_mahasiswa <- data.frame(fakultas, jumlah_mahasiswa)

#Melihat isi data frame
info_mahasiswa

#Buat vector baru sebagai representasi akreditasi
akreditasi <- c("A","A","B","A","A")


#Buat data frame dari ketiga vector di atas
info_mahasiswa <- data.frame(info_mahasiswa, akreditasi)

info_mahasiswa


# Teori
# Data frame merupakan jenis struktur data yang dirancang untuk representasi tabel, yang terdiri dari atas kolom dengan tiap kolom berisi list ataupun vector dengan jumlah data yang sama.

# Untuk membuat data frame kita bisa gunakan function data.frame.

# Tugas Praktik:

# Tambahkan kode yang sesuai dengan petunjuk berikut ini di Code Editor. Kode yang sebelumnya telah ada di code editor tidak boleh dihapus.

# Buatlah vector terbaru bernama akreditasi dengan isi ("A","A","B","A","A")
# Buat satu data frame dengan nama info_mahasiswa yang terdiri dari dua vector dari contoh ditambah dengan vector akreditasi.
# Tampilkan data frame info_mahasiswa.