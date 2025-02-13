SELECT AVG(Count_Transaction) avg_transaksi
FROM data_retail
WHERE product = 'Sepatu'

-- Teori
-- "Selain digunakan untuk perintah WHERE dan JOIN, subquery juga dapat dilakukan pada perintah SELECT. Ketika kita menggunakan subquery pada perintah select akan menghasilkan kolom baru dengan nilai bedasarkan perintah subquery yang kita lakukan. Nilai pada kolom baru ini dapat digunakan sebagai pembanding dengan hasil perintah query pada query utama," Andra melanjutkan penjelasan materinya padaku. 

-- Data ketiga yang dibutuhkan oleh Kroma berkaitan dengan program reward kepada pelanggan. Data yang dibutuhkan oleh Kroma adalah data pelanggan dengan total transaksi lebih tinggi daripada rata-rata total transaksi pelanggan.

-- "Kali ini aku akan menggunakan subquery dalam perintah select, untuk mendapatkan data ini!" aku berkata pada diriku sendiri, karena sudah mulai paham cara mengerjakan tugas ini dengan bantuan Andra. 

-- "Untuk dapat mengerjakan tugas ini, pertama sekali kamu membutuhkan nilai rata-rata total transaksi per masing-masing produk. Sebagai contoh, kita akan menggunakan produk sepatu, rata-rata jumlah transaksinya adalah sebesar 16.18,"