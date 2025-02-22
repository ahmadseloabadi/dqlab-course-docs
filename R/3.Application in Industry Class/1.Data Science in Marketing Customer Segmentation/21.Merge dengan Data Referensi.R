databaru <- data.frame(Customer_ID="CUST-100", Nama.Pelanggan="Rudi Wilamar",Jenis.Kelamin="Wanita",Profesi="Pelajar",Tipe.Residen="Cluster",NilaiBelanjaSetahun=3.5)
Identitas.Cluster <- readRDS(file="cluster.rds")
#Masukkan perintah untuk penggabungan data
databaru <- merge(databaru, Identitas.Cluster$Profesi)
databaru <- merge(databaru, Identitas.Cluster$Jenis.Kelamin)
databaru <- merge(databaru, Identitas.Cluster$Tipe.Residen)
databaru

# Teori
# Dengan adanya data baru dan objek yang berisi data referensi telah dibaca kembali, kita bisa menggabungkan data baru ini untuk mendapatkan konversi numerik dari field Jenis.Kelamin, Profesi dan Tipe.Residen.

# Tujuannya adalah kita akan bisa mencari segmen pelanggannya dengan data numerik hasil penggabungan.

# Cara menggabungkannya adalah dengan menggunakan function merge, dimana kedua data akan digabungkan dengan mencari persamaan nama kolom dan isinya.

# Sebagai contoh, perintah berikut akan menggabungkan variable databaru dengan variable Identitas.Cluster$Profesi.

# merge(databaru, Identitas.Cluster$Profesi)
# Maka prosesnya akan terlihat sebagai berikut.


# Variable databaru dengan Identitas.Cluster$Profesi memiliki nama kolom yang sama, yaitu Profesi.
# Kolom Profesi kemudian akan dijadikan "kunci" untuk menggabungkan kedua variable ini.
# Ternyata isi Profesi dari databaru, yaitu "Pelajar" juga terdapat di Identitas.Cluster. Ini akan membuat penggabungan menjadi berhasil.
# Penggabungan ini juga akan mengambil kolom Profesi.1 dan isi data yang terkait dengan Pelajar, yaitu nilai 3.
# Berikut adalah hasil akhirnya.


# Perhatikan kalau kolom kunci, yaitu Profesi digeser ke depan. Dan sisanya adalah kolom-kolom dari kedua variable.

# Tugas Praktek

# Berikut adalah perintah dari pengembangan contoh di atas. Setelah terjadi penggabungan data, hasilnya disimpan kembali ke variable databaru.

# databaru <- merge(databaru, Identitas.Cluster$Profesi)
# Cobalah ketik perintah ini ke code editor dan lanjutkan perintahnya untuk menggabungkan juga variable Identitas.Cluster$Jenis.Kelamin dan Identitas.Cluster$Tipe.Residen. Kemudian tampilkan data akhirnya.