df_event <- read.csv('https://storage.googleapis.com/dqlab-dataset/event.csv', stringsAsFactors = F)
dplyr::glimpse(df_event)

# Tugas
# Untuk Dataset yang digunakan disediakan dalam format csv sehingga bisa dibaca di R dengan cara,

# df_event <- read.csv('https://storage.googleapis.com/dqlab-dataset/event.csv', stringsAsFactors = F)

# Untuk melihat data, gunakan fungsi glimpse dari package **dplyr**.
# Karena hanya menggunakan 1 fungsi saja, kita bisa memanggilnya tanpa load package nya, yakni dengan menggunakan symbol :

# dplyr::glimpse(df_event)
# silahkan jalankan 2 fungsi tersebut untuk membaca dan melihat isi datanya.

# Penjelasan
# Terlihat bahwa ada 33,571 baris data (Observations) dan ada 4 kolom (Variables), yakni :

# loan_id : unik ID dari loan yang diupload ke marketplace
# investor_id : unik ID dari investor yang terdaftar
# nama_event : kegiatan yang dilakukan oleh investor dan perubahan status loan
# created_at : waktu (sampai detik) event terjadi