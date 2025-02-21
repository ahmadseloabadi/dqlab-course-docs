data_gabungan = merge(kunjungan_dokter, penjualan_permen, by.x=c("Bulan","Tahun"), by.y=c("Bulan","Tahun"), sort = FALSE)
data_gabungan

# Teori
# Untuk dapat melakukan analisis yang diminta oleh Kroma, pertama-tama aku harus menggabungkan kedua dataset yang kudapat sebelumnya menjadi satu. Aku melihat bahwa kedua dataset diatas memiliki kolom atau disebut dengan unique key yang sama yaitu Bulan dan Tahun. Aku dapat menggabungkan kedua dataset ini berdasarkan variabel tersebut. Aku menggunakan perintah merge untuk menggabungkan kedua data ini.

# Perintah merge ini berfungsi untuk menggabungkan data, bentuk umum dari fungsi merge yaitu merge(x, y, by.x, by.y, sort=TRUE).

# x dan y merupakan dataset yang ingin digabungkan.
# Parameter by.x dan by.y merupakan kolom yang akan digunakan untuk menggabungkan data. Untuk data dengan lebih dari satu unique key, dapat menggunakan perintah by.x = c("key 1", "key 2", ..., "dst"). Namun jika terdapat 1 unique key, cukup menggunakan perintah by.x = "key 1".
# Parameter sort=FALSE atau sort=TRUE digunakan untuk mengurutkan data ketika melakukan join.
# Aku menjalankan perintah berikut untuk menggabungkan kedua dataset kunjungan_dokter dan penjualan_permen