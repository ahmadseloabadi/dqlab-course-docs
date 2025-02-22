#Bagian Data Preparation
pelanggan <- read.csv("https://storage.googleapis.com/dqlab-dataset/customer_segments.txt", sep="\t")
pelanggan_matrix <- data.matrix(pelanggan[c("Jenis.Kelamin", "Profesi", "Tipe.Residen")])
pelanggan <- data.frame(pelanggan, pelanggan_matrix)
Profesi <- unique(pelanggan[c("Profesi","Profesi.1")])
Jenis.Kelamin <- unique(pelanggan[c("Jenis.Kelamin","Jenis.Kelamin.1")])
Tipe.Profesi <- unique(pelanggan[c("Tipe.Residen","Tipe.Residen.1")])
pelanggan$NilaiBelanjaSetahun <- pelanggan$NilaiBelanjaSetahun/1000000
field_yang_digunakan = c("Jenis.Kelamin.1", "Umur", "Profesi.1", "Tipe.Residen.1","NilaiBelanjaSetahun")
#Membandingkan dengan 2 cluster kmeans, masing-masing 2 dan 5
set.seed(1)
kmeans(x=pelanggan[field_yang_digunakan], centers=2, nstart=25)
set.seed(1)
kmeans(x=pelanggan[field_yang_digunakan], centers=5, nstart=25)


# teori
# Yang akan kita analisa berikutnya adalah bagian keempat, yaitu nilai metrik sum of squares seperti terlihat berikut ini.

# Within cluster sum of squares by cluster:

# [1] 316.73367  58.21123 174.85164 171.67372 108.49735 
# (between_SS / total_SS =  92.4 %) 
# Konsep sum of squares (SS) adalah jumlah "jarak kuadrat" perbedaan tiap titik data dengan mean atau centroidnya. SS ini bisa dengan mean atau centroid untuk tiap cluster atau secara keseluruhan data. Sum of squares dalam literatur data science lain sering disebut dengan Sum of Squared Errors (SSE).

# Semakin besar nilai SS menyatakan semakin lebarnya perbedaan antar tiap titik data di dalam cluster tersebut.

# Berdasarkan konsep tersebut, berikut adalah penjelasan untuk hasil output kmeans di atas:

# Nilai 316.73367 adalah SS untuk cluster ke-1, 58.21123 adalah SS untuk cluste ke-2, dan seterusnya. Semakin kecil nilainya berpotensi semakin baik.
# total_SS: adalah SS untuk seluruh titik terhadap nilai rata-rata global, bukan untuk per cluster. Nilai ini selalu tetap dan tidak terpengaruh dengan jumlah cluster.
# between_SS: adalah total_SS dikurangi dengan jumlah nilai SS seluruh cluster.
# (between_SS / total_SS) adalah rasio antara between_SS dibagi dengan total_SS. Semakin besar persentasenya, ummnya semakin baik.
# Ini adalah metrik yang bisa kita gunakan untuk menjawab seberapa baik jumlah cluster yang kita bentuk? Apakah dibagi 2, 5, 10 atau 30?

# Teknik penggunaan metrik ini cukup panjang, namun untuk kepentingan praktis kali ini kita hanya melihat perbedaan nilai ini dengan contoh.

# Tugas Praktek

# Gantilah […] pada code editor dengan empat perintah berikut.

# set.seed(1)
# kmeans(x=pelanggan[field_yang_digunakan], centers=2, nstart=25)
# set.seed(1)
# kmeans(x=pelanggan[field_yang_digunakan], centers=5, nstart=25)


# penjelasan
# Yang akan kita analisa berikutnya adalah bagian keempat, yaitu nilai metrik sum of squares seperti terlihat berikut ini.

# Within cluster sum of squares by cluster:

# [1] 316.73367  58.21123 174.85164 171.67372 108.49735 
# (between_SS / total_SS =  92.4 %) 
# Konsep sum of squares (SS) adalah jumlah "jarak kuadrat" perbedaan tiap titik data dengan mean atau centroidnya. SS ini bisa dengan mean atau centroid untuk tiap cluster atau secara keseluruhan data. Sum of squares dalam literatur data science lain sering disebut dengan Sum of Squared Errors (SSE).

# Semakin besar nilai SS menyatakan semakin lebarnya perbedaan antar tiap titik data di dalam cluster tersebut.

# Berdasarkan konsep tersebut, berikut adalah penjelasan untuk hasil output kmeans di atas:

# Nilai 316.73367 adalah SS untuk cluster ke-1, 58.21123 adalah SS untuk cluste ke-2, dan seterusnya. Semakin kecil nilainya berpotensi semakin baik.
# total_SS: adalah SS untuk seluruh titik terhadap nilai rata-rata global, bukan untuk per cluster. Nilai ini selalu tetap dan tidak terpengaruh dengan jumlah cluster.
# between_SS: adalah total_SS dikurangi dengan jumlah nilai SS seluruh cluster.
# (between_SS / total_SS) adalah rasio antara between_SS dibagi dengan total_SS. Semakin besar persentasenya, ummnya semakin baik.
# Ini adalah metrik yang bisa kita gunakan untuk menjawab seberapa baik jumlah cluster yang kita bentuk? Apakah dibagi 2, 5, 10 atau 30?

# Teknik penggunaan metrik ini cukup panjang, namun untuk kepentingan praktis kali ini kita hanya melihat perbedaan nilai ini dengan contoh.

# Tugas Praktek

# Gantilah […] pada code editor dengan empat perintah berikut.

# set.seed(1)
# kmeans(x=pelanggan[field_yang_digunakan], centers=2, nstart=25)
# set.seed(1)
# kmeans(x=pelanggan[field_yang_digunakan], centers=5, nstart=25)

# penjelasan
# Terlihat untuk 2 cluster (k=2), SS per cluster lebih besar dibandingkan jika data dibagi menjadi 5 cluster (k=5). Perhatikan juga persentase rasio antara between_SS dan total_SS, dimana k=5 juga lebih besar.

