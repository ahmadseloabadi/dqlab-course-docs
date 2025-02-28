library(arules)
transaksi_tabular <- read.transactions(file="transaksi_dqlab_retail.tsv", format="single", sep="\t", cols=c(1,2), skip=1)
write(transaksi_tabular, file="test_project_retail_1.txt", sep=",")


# Teori
# Untuk menyelesaikan project, maka kita akan mengetikkan code yang perlu di-submit untuk dicek jawabannya benar atau salah. Berbeda dengan course, setiap code yang di-submit akan otomatis disimpan dan dimunculkan kondisi code terakhir setiap kali Anda buka soal terkait.

# Project ini terdiri dari 3 soal, yaitu:

# Mendapatkan insight top 10 dan bottom 10 dari produk yang terjual.
# Mendapatkan daftar seluruh kombinasi paket produk dengan korelasi yang kuat.
# Mendapatkan daftar seluruh kombinasi paket produk dengan item tertentu.
# Tiap soal memerlukan input dataset yang telah dijelaskan pada subbab sebelumnya. Setelah diproses maka Anda perlu menuliskan dalam nama file sesuai petunjuk.

 

# Tugas Praktek

# Cobalah jalankan code yang sudah ada pada code editor berikut di mana file dataset dibaca dan kemudian langsung ditulis menggunakan function write dari package arules.