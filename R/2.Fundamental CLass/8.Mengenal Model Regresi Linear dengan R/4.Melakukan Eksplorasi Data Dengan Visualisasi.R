#Melakukan explorasi data kunjungan dokter dengan penjualan permen
plot(data_gabungan$tingkat.kunjungan.ke.dokter.gigi, data_gabungan$penjualan.permen,
	pch = 19,
    xlab = "Kunjungan dokter",
    ylab = "Penjualan Permen",
    main = "Kunjungan dokter dengan penjualan permen",     
    col = "blue")

#Melakukan explorasi data kunjungan dokter dengan penjualan sereal
plot(data_gabungan$tingkat.kunjungan.ke.dokter.gigi, data_gabungan$penjualan.sereal,
	pch = 19,
    xlab = "Kunjungan dokter",
    ylab = "Penjualan Sereal",
    main = "Kunjungan dokter dengan penjualan sereal",     
    col = "blue")

#Melakukan explorasi data kunjungan dokter dengan penjualan buah pisang
plot(data_gabungan$tingkat.kunjungan.ke.dokter.gigi, data_gabungan$penjualan.buah.pisang,
	pch = 19,
    xlab = "Kunjungan dokter",
    ylab = "Penjualan Buah Pisang",
    main = "Kunjungan dokter dengan penjualan buah pisang",
    col = "blue")

# Teori
# Selain menggunakan eksplorasi data, visualisasi data juga merupakan hal yang penting sebelum melakukan analisis regresi. Dalam metode kali ini, aku akan menggunakan scatter plot untuk melihat hubungan antara kunjungan dokter gigi dengan penjualan permen, sereal, dan pisang. 

# Hasil Analisaku
# Aku mengamati ketiga scatterplot dan merasakan bahwa tidak ada hubungan yang cukup kuat antara kunjungan dokter gigi dengan penjualan permen, sereal maupun pisang. Aku merasa butuh bantuan seseorang untuk memecahkan masalah ini, dan orang itu adalah Aksara, rekanku yang merupakan seorang seorang senior data analyst di DQ-Dent untuk diskusi. 

# “Hi Aksara, aku baru saja melakukan analisis awal terkait kebutuhan analisis untuk penyuluhan kesehatan gigi. Aku melihat bahwa sebenarnya tidak terdapat hubungan yang signifikan antara kunjungan ke rumah sakit dengan penjualan permen, sereal, ataupun buah pisang. Tidak terdapat hubungan yang signifikan antara variabel-variabel ini,” kataku sambil menunjukkan grafik yang kuhasilkan pada Aksara.

# Aksara memperhatikan grafik yang kutunjukkan dan terdiam sejenak. Lalu dia hanya tertawa dan berkata, “Sunyi, coba pikirkan, kalau aku makan permen sekarang, apakah aku akan langsung sakit gigi?”

# “Ehh, bener juga! Baiklah aku paham” aku jadi ikut tertawa bersama Aksara menyadari kebodohanku ini.

# “Coba kamu hitung dulu berapa efek keterlambatan memakan permen ini terhadap kunjungan ke rumah sakit,” Aksara memberikan sedikit petunjuk padaku.

# “Baik, siap Aksara. Terima kasih ya!” aku berterima kasih atas petunjuknya, aku segera kembali pada pekerjaanku lagi. 