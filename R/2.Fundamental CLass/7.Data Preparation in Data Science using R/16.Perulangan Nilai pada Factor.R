#Buatlah factor dengan teks "Jan", "Feb", "Mar","Jan","Mar", dan "Jan"
factor(c("Jan","Feb","Mar","Jan","Mar","Jan"))


# Teori
# Jika pada praktek sebelumnya, factor diisi dengan tiga contoh nilai nama bulan pertama yang tidak berulang. Pada praktek kali ini kita coba akan memasukkan nilai yang berulang, dimana "Jan" dan "Mar" akan dimasukkan berulang.

# Berikut adalah contohnya:

# factor(c("Jan","Feb","Mar","Jan","Mar","Jan"))
# Jika dieksekusi maka hasilnya adalah sebagai berikut:

# [1] Jan Feb Mar Jan Mar Jan
# Levels: Feb Jan Mar
# Berikut adalah penjelasan hasilnya.

# Hasil                                   Keterangan

# [1] Jan Feb Mar Jan Mar Jan             [1] adalah tampilan output dengan hasil tampilan dimulai pada indeks ke 1

#                                         Jan Feb Mar Jan Mar Jan adalah tampilan dari nilai-nilai factor

# Levels: Feb Jan Mar                     Levels: adalah atribut yang menempel pada setiap faktor dan berisi daftar diskrit dari variasi nilai-nilai yang terdapat pada faktor.

#                                         Variasi nilainya masih sama, yaitu tiga (Feb Jan Mar).

 

# Tugas Praktek

# Pada code editor, masukkan code seperti contoh pada Lesson dan jalankan. Jika sudah selesai, tekan tombol Submit untuk melanjutkan ke lesson selanjutnya.