#Konstruksi Dataframe
nama <- c("Andra","Andra","Senja","Senja","Aksara","Aksara","Kroma","Kroma")
hari <- c("Senin","Selasa","Senin","Selasa","Senin","Selasa","Senin","Selasa")
jam_kerja <- c(8,9,8,8,9,9,8,10)
data <- data.frame(nama,hari,jam_kerja)
data

#Jumlah jam kerja tiap individu
aggregate(data$jam_kerja, list(data$nama), sum)

#Rata-rata jam kerja berdasarkan hari
aggregate(data$jam_kerja, list(data$hari), mean)


# Teori

# aggregate() pada R membagi dataset menjadi beberapa bagian atau subset dan kemudian dapat digunakan untuk melakukan perhitungan statistika pada setiap subset yang dihasilkan, seperti menghitung sum, mean, dan length (count). Nah, coba perhatikan contoh ini.
# Sintaks Aggregate()
# Nah, untuk syntax dari function aggregate() adalah sebagai berikut :

# aggregate(x, by, FUN)

# x   : Dataframe atau salah satu field dari Dataframe
# by   : list() berisi grouping element (yang menentukan grouping dari subset)
# FUN : Function (fungsi agregasi yang digunakan, misalnya: sum, count, dsb.)

 

# Untuk mendapatkan jumlah jam kerja tiap individu, maka x yang akan di hitung adalah jam kerja by nama dengan function sum.
# Potongan codes yang dapat di gunakan adalah aggregate(data$jam_kerja, list(data$nama), sum)

# Tugas
# “Baik Ndra,” ujarku sambil mulai mempraktikkan function aggregate() untuk menyelesaikan tugas dibawah ini:

# Menghitung rata-rata jam kerja berdasarkan hari
# Menggunakan FUN = mean