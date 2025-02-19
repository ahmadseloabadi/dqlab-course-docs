#Konstruksi Dataframe
nama <- c("Kroma", "Andra", "Aksara", "Antara", "Senja")
pekerjaan <- c("Manager", "Senior Data Scientist", "Data Analyst", "Data Engineer", "Senior Data Analyst")
periode_kerja <- c(5,2,1,1,3)
df <- data.frame(nama,pekerjaan,periode_kerja)

#Tampilkan 3 baris pertama dari kolom 'pekerjaan'
df[1:3, "pekerjaan"]

#Tampilkan 2 baris pertama dari kolom 'periode_kerja'
df[1:2, "periode_kerja"]

# Teori
# Setelah mencoba untuk mengakses element dalam Dataframe, aku mulai bertanya - tanya apakah ada cara lain untuk mengakses element, aku langsung menanyakannya kepada Andra. “Ndra, aku penasaran deh. Kira-kira, ada cara lain ga untuk mengakses element dalam Dataframe?”

# “Ada kok penjelasan selanjutnya tentang cara mengakses element di Dataframe di modul, coba kamu baca dulu agar kamu jadi lebih paham,” ujar Andra

# Aku membuka halaman selanjutnya dan ternyata Andra benar, terdapat penjelasan tentang cara lain untuk mengakses element Dataframe di modul ini.

# Terdapat cara lain selain menggunakan posisi baris dan kolom dari sebuah element, yaitu dengan menggunakan nama variable atau nama kolom dari Dataframe untuk memilih suatu kolom pada Dataframe.

# Contohnya, dengan menggunakan Dataframe df[1:3,1] dapat memungkinkan untuk memilih tiga elemen pertama dari kolom 'nama'.

# Tetapi, ada salah satu kekurangan dalam metode ini yaitu perlunya mengetahui atau mencari nomor kolom dari 'nama' yang terdapat di Dataframe yang memiliki banyak kolom.

# Solusi untuk mempermudah permasalahan tersebut, yaitu dengan menggunakan nama dari kolom dengan syntax df[1:3,'nama'].

# Instruksi :

# Ikuti instruksi yang terdapat pada comment dan tampilkan element di dalam Dataframe dengan menggunakan nama kolom.