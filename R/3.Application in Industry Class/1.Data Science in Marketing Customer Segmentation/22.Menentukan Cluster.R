#membuat data baru
databaru <- data.frame(Customer_ID="CUST-100", Nama.Pelanggan="Rudi Wilamar",Umur=20,Jenis.Kelamin="Wanita",Profesi="Pelajar",Tipe.Residen="Cluster",NilaiBelanjaSetahun=3.5)

Identitas.Cluster <- readRDS(file="cluster.rds")

databaru <- merge(databaru, Identitas.Cluster$Profesi)
databaru <- merge(databaru, Identitas.Cluster$Jenis.Kelamin)
databaru <- merge(databaru, Identitas.Cluster$Tipe.Residen)

#menentukan data baru di cluster mana
which.min(sapply( 1:5, function( x ) sum( ( databaru[Identitas.Cluster$field_yang_digunakan] - Identitas.Cluster$Segmentasi$centers[x,])^2 ) ))
Identitas.Cluster$Segmen.Pelanggan[which.min(sapply(1:5,function(x)sum((databaru[Identitas.Cluster$field_yang_digunakan] - Identitas.Cluster$Segmentasi$centers[x,])^2))),]
# Teori
# Menentukan Cluster
# Kini saatnya penentuan untuk melakukan praktek terpenting bagi bisnis: data baru ini masuk ke segmen mana?

# Gampang!

# Yaitu dengan tahapan berikut:

# mencari jarak kuadrat minimum atau terdekat
# dari kolom numerik data baru tersebut
# ke centroid kolom terkait
# dari seluruh cluster yang ada
# Kalau kita terjemahkan jadi rumus sebagai berikut:

# which.min(sapply( 1:5, function( x ) sum( ( data[kolom] - objekkmeans$centers[x,])^2 ) ))
# dimana:

# min: merupakan function untuk mencari nilai minimum
# 1:5 : adalah range nomor cluster dari 1 sampai dengan 5 (atau lebih sesuai dengan ukuran cluster)
# sapply: digunakan untuk melakukan iterasi berdasarkan range (dalam kasus ini 1 s/d 5)
# function(x): digunakan untuk proses dengan x diisi 1 s/d 5 per proses
# (data[kolom] – objekkmeans$centers[x,]) ^2: adalah jarak kuadrat data. Ingat centers adalah komponen dari objek kmeans.
# sum: digunakan untuk menjumlahkan jarak kuadrat
# Mungkin Anda masih akan perlu memahami ini karena konstruksinya yang mungkin sedikit aneh tapi sebenarnya prinsipnya sederhana. Cobalah lakukan corat coret dan berkunjung kembali ke halaman ini dengan account DQLab untuk memahami rumusan ini.

# Untuk saat ini…agar tidak membuang waktu, kita coba terapkan secara praktis pada tugas berikut.

# Tugas Praktek

# Perintah untuk menentukan cluster seperti pada contoh di atas untuk kasus kita telah terisi pada code editor berikut.

# Jalankan code tersebut, dan hasil akhir adalah tampilan nomor cluster yang isinya 1.  Rubahlah umur pelanggan pada databaru dengan 32, jalankan kembali dan lihat hasilnya.

# Kemudian jadikan perintah which.min(…) sebagai index pada referensi nama cluster (Segmen.Pelanggan) sehingga tampilan tidak mengeluarkan nomor cluster, tetapi nama cluster.

# Kesimpulan
# Praktek terakhir menunjukkan bagaimana data pelanggan baru dianalisa oleh model kita dan mengeluarkan nomor cluster atau segmen.

# Dengan berakhirnya praktek ini, berarti menunjukkan kita sudah menjalani siklus tahap demi tahap memodelkan dan menggunakan customer segmentation terhadap data kita.