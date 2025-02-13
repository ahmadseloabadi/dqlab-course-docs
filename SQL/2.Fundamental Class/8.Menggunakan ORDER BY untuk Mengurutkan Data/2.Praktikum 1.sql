SELECT DISTINCT
    Customer_ID, 
    sum(Count_Transaction) total_transaksi
FROM data_retail
GROUP BY 1
ORDER BY 2 DESC

-- Tugas-1: Tampilkan daftar customer yang memiliki pembelian barang diurutkan dari yang terbesar ke yang terkecil.

-- Untuk menjawab pertanyaan ini, aku dapat menerapkan perintah ORDER BY  pada kolom total transaksi dan menambahkan perintah DESC untuk mengurutkan data dari yang terbesar ke yang terkecil.
