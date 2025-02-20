#Buatlah factor dengan isi nilai teks "Jan", "Feb", dan "Mar"
factor(c("Jan","Feb","Mar"))

# Teori
# Factor dapat dibuat di R dengan function factor, dengan syntax paling sederhana sebagai berikut:

# factor( x = vector)
# atau

# factor(vector)
# Sebagai contoh, untuk membuat factor dari tiga nama bulan pertama pada kalender kita gunakan perintah berikut:

# factor(c("Jan","Feb","Mar"))
# Perintah di atas akan menampilkan hasil berikut:

# [1] Jan Feb Mar
# Levels: Feb Jan Mar
# Terlihat ada dua hasil, yaitu nilai yang dimasukkan dan ada satu lagi output Levels. Berikut adalah penjelasan dari hasil di atas.

# Hasil                   Keterangan

# [1] Jan Feb Mar         [1] adalah tampilan output dengan hasil tampilan dimulai pada indeks ke 1

#                         Jan Feb Mar adalah tampilan dari nilai factor

# Levels: Feb Jan Mar     Levels: adalah atribut yang menempel pada setiap faktor dan berisi daftar diskrit dari variasi nilai-nilai yang terdapat pada faktor.

#                         Untuk kasus ini terdapat tiga nilai variasi yaitu Feb Jan Mar – dan kebetulan sama dengan jumlah nilai yang terdapat pada factor saat ini, tetapi dengan urutan yang berbeda dengan tampilan isian factor.

 

#                         Pada levels, terlihat Feb dimulai duluan dibandingkan Jan karena secara urutan alfabet pertama pada Feb – yaitu F – lebih kecil dibandingkan alfabet pertama pada Jan – yaitu J.

 

# Tugas Praktek

# Pada code editor, buatlah satu factor dari suatu vector yang berisi nilai teks "Jan", "Feb" dan "Mar".