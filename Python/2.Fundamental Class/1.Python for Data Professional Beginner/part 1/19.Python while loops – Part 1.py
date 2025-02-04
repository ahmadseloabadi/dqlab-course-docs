# Tagihan
tagihan = [50000, 75000, 125000, 300000, 200000]
# Tanpa menggunakan while loop
total_tagihan = tagihan[0]+tagihan[1]+tagihan[2]+tagihan[3]+tagihan[4]
print(total_tagihan)
# Dengan menggunakan while loop
i = 0 # sebuah variabel untuk mengakses setiap elemen tagihan satu per satu
jumlah_tagihan = len(tagihan) # panjang (jumlah elemen dalam) list tagihan
total_tagihan = 0 # mula-mula, set total_tagihan ke 0
while i < jumlah_tagihan: # selama nilai i kurang dari jumlah_tagihan
    total_tagihan += tagihan[i] # tambahkan tagihan[i] ke total_tagihan
    i += 1 # tambahkan nilai i dengan 1 untuk memproses tagihan selanjutnya.
print(total_tagihan)

# Tugas 1:
# Hitung total tagihan secara manual dengan menulis potongan kode berikut ke dalam live code editor:

# Setelah aku konfirmasi potongan kode yang aku buat ke Senja, aku belajar bahwa potongan kode ini tidak efektif apabila ukuran dari list tagihan bertambah. Tentunya aku akan kewalahan untuk menuliskan ekspresi penambahan pada setiap elemennya, terutama jika elemennya berjumlah banyak. Untuk mengatasi hal ini Senja memberikan masukan untuk menggunakan struktur kontrol while.

# Tugas 2:
# Ubah potongan kode yang telah dibuat dengan arahan Senja dan tuliskan di dalam live code editor:

# Setelah dijalankan, kedua potongan kode akan mencetak output yang sama yaitu 750000. 

# Dari tugas di atas, aku belajar bahwa statemen while akan terus menjalankan aksi di dalamnya, selama kondisi yang dituliskan di samping kanan statemen while terus terpenuhi. Melalui penambahan nilai i sebagai salah satu aksi dalam statemen while, saat nilai i = 4, kondisi dari statemen while tidak akan terpenuhi dan eksekusi program akan dilanjutkan ke perintah print(total_tagihan).