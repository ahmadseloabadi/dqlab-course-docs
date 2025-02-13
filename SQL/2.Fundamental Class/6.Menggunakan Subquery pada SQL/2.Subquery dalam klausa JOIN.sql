SELECT a.Customer_ID, a.Transaksi_Sepatu, b.Transaksi_Jaket
FROM (select customer_id, sum(count_transaction) transaksi_sepatu
      from data_retail
      where product = 'Sepatu'
      group by 1) A
JOIN (select Customer_ID, sum(Count_Transaction) transaksi_jaket
      from data_retail
      where product = 'Jaket'
      group by 1) B on a.Customer_ID = b.Customer_ID
ORDER BY 2 DESC,3 DESC

-- Teori
-- Tadi kan yang kamu pelajari itu untuk klausa WHERE, sekarang coba pelajari untuk klausa join ya, Nyi," Andra memintaku kembali membaca buku catatan.

-- Perintah subquery dapat dilakukan pada klausa JOIN. Ketika menggunakan subquery dalam perintah join dapat berfungsi untuk melakukan penggabungan data seperti perintah join pada umumnya. Akan menggunakan hasil pada inner query dan menggabungkan datanya dengan hasil pada perintah outer query. Perlu diingat juga bahwa dapat juga melakukan perintah subquery didalam FROM, JOIN, LEFT JOIN, RIGHT JOIN.

-- "Sudah selesai, Ndra, aku baca catatannya. Apa yang perlu aku lakukan sekarang?" tanyaku tidak sabar untuk mencoba lagi mengerjakan tugas.

-- "Seperti tugas yang diminta Kroma, kali ini tugasmu berkaitan dengan segmentasi pelanggan DQ-Shop. Coba hitung total transaksi setiap customer per masing-masing produk!" 

-- Walaupun sudah baca materi, aku masih agak bingung dan ragu-ragu.

-- "Untuk mengerjakan tugas ini, kamu dapat menggunakan subquery dalam perintah join untuk mendapatkan data total transaksi setiap produk per masing-masing customer. Sebagai contoh, kita ingin mendapatkan jumlah total transaksi untuk customer yang membeli produk tas dan sepatu. 

-- penjelasan
-- Perintah pada outer query akan menghasilkan data jumlah transaksi sepatu per-pelanggan, sementara perintah pada inner query akan menghasilkan data jumlah transaksi jaket per-pelanggan. Dengan menggunakan perintah JOIN maka akan menggabungkan kedua tabel ini menjadi satu.

