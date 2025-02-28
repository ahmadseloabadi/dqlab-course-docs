df_loan <- read.csv('https://storage.googleapis.com/dqlab-dataset/loan_disbursement.csv', stringsAsFactors = F)
dplyr::glimpse(df_loan)

# Tugas
# Untuk Dataset yang digunakan sudah disediakan dalam format rds sehingga bisa langsung dibaca di R dengan cara :

# df_loan <- read.csv('https://storage.googleapis.com/dqlab-dataset/loan_disbursement.csv', stringsAsFactors = F)
# stringsAsFactors ini berguna agar data-data yang bertipe character (seperti nama cabang, agen dan tanggal) tidak diubah menjadi factor.

# untuk melihat datanya, gunakan fungsi glimpse dari package dplyr. karena hanya pakai 1 fungsi, kita bisa memanggilnya tanpa load package nya, yakni dengan menggunakan symbol :: dan format package::fungsi()

# dplyr::glimpse(df_loan)
# silahkan jalankan 2 fungsi tersebut untuk membaca dan melihat isi datanya.

# penjelasan
# Terlihat bahwa ada 9,754 baris data (Observations) dan ada 5 kolom (Variables),
# loan_id : unik ID dari data ini
# tanggal_cair : tanggal uang diberikan kepada mitra
# cabang : lokasi agen bekerja dan tempat mitra terdaftar
# agen : petugas lapangan yang melakukan pencairan
# amount : jumlah uang yang dicairkan