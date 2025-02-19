## carilah boxplot antara variabel jenis kelamin dengan total belanja
boxplot(Total~Jenis.Kelamin,data = data_intro)

## analisis bagaimana hubungan jenis kelamin dengan total belanja mengunakan uji statistik t-test
t.test(Total~Jenis.Kelamin,data = data_intro)

# Teori
# Berdasarkan kasus diatas kita akan melihat hubungan antara data kategorik dan numerik, yaitu variabel jenis kelamin dan total belanja. Sebelum menguji hubungannya, sebaiknya dilihat perbedaan rata-rata total belanja untuk laki-laki dan perempuan dengan visualisasi yaitu menggunakan boxplot. Boxplot grafik statistik dari data dengan komponen lima ukuran statistik yaitu Min, Q1,Q2, Q3, dan Max.
# Selanjutnya analisis inferensia yaitu untuk mengetahui apakah ada perbedaan rata-rata total belanja pada laki-laki dan perempuan maka digunakan statistik uji t-test.

# Function boxplot digunakan untuk melihat secara grafik rata-rata total belanja pada laki-laki dan perempuan, sedangkan perintah t.test digunakan untuk melihat hubungan secara statistik. Penggunaan kedua fungsi diatas yaitu variabel pertama yang bertipe numerik, sedangkan variabel kedua variabel kategorik. Hipotesis t-test sebagai berikut :

# Hipotesis Nihil (null): tidak ada perbedaan rata-rata total belanja antara laki-laki dan perempuan
# Hipotesis Alternatif : ada perbedaan rata-rata total belanja antara laki-laki dan perempuan