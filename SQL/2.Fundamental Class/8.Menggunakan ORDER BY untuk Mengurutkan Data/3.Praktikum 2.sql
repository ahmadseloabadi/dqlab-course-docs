SELECT DISTINCT
    Customer_ID, 
    sum(Count_Transaction) total_transaksi
FROM data_retail
GROUP BY 1
ORDER BY 2 ASC

-- Tugas-2: Tampilkan daftar customer yang memiliki pembelian barang diurutkan dari yang terkecil ke yang terbesar.

-- Untuk menjawab soal nomor 2, aku menerapkan perintah ORDER BY pada kolom total transaksi dan menambahkan perintah ASC untuk mengurutkan data dari yang terkecil ke yang terbesar.