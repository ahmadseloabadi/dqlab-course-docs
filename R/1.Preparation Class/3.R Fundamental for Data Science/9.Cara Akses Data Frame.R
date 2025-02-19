#Membuat tiga variable vector
fakultas <- c("Bisnis", "D3 Perhotelan", "ICT", "Ilmu Komunikasi", "Seni dan Desain")
jumlah_mahasiswa <- c(260, 28, 284, 465, 735)
akreditasi <- c("A","A","B","A","A")

#Membuat data frame dari kedua vector di atas
info_mahasiswa <- data.frame(fakultas, jumlah_mahasiswa, akreditasi)

#Menampilkan kolom jumlah_mahasiswa
info_mahasiswa$jumlah_mahasiswa

#Menampilkan kolom fakultas
info_mahasiswa$fakultas

# Teori
# Data frame memiliki banyak kolom dan dapat diakses dengan melalui nama kolom yang dimilikinya. Caranya adalah menggunakan accessor dengan tanda $ yang diikuti dengan nama kolom.

# Tugas Praktik:

# Tambahkan baris kode baru untuk menampilkan kolom fakultas dari data frame info_mahasiswa. 

# Kesimpulan
# Kamu telah mempelajari mengenai tiga tipe data fundamental yang sangat penting di R di bab ini, yaitu vector, list dan data frame. Ketiga tipe data ini dapat diisi dengan lebih dari satu nilai.

# Ringkasan dari tipe-tipe data tersebut adalah sebagai berikut.

# Vector hanya dapat diisi dengan salah satu tipe data saja di seluruh elemennya, misalnya angka saja ataupun teks saja. Pembuatan vector menggunakan fungsi c, dan bisa diakses dengan accessor dengan angka indeks yang diapit kurung siku. Namun, jika berupa named vector, maka indeksnya adalah berupa teks.
# List adalah tipe data yang bisa diisi dengan lebih dari satu tipe data di seluruh elemennya, dengan campuran teks dan angka. Pembuatan list adalah menggunakan fungsi list, dan elemen pada list dapat diakses dengan accessor yang diapit kurung siku seperti pada vector.
# Data Frame adalah tipe data yang terdiri dari satu atau beberapa vector ataupun list. Untuk membuat data frame kita menggunakan fungsi data.frame. Data frame ini dapat diakses dengan menggunakan accessor $ diikuti nama kolom, dan juga angka indeks.
# Dengan memahami penggunaan vector, list dan data frame kita siap mempelajari penggunaan banyak fungsi lanjutan di R, seperti menghasilkan grafik dan penggunaan algoritma machine learning.

 